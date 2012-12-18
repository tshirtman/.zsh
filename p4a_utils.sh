# python for android build helpers
PYTHON_FOR_ANDROID=~/python-for-android

function lg(){
    if [ "x$1" == "xadb" ]; then
        adb logcat | grep -i python
    else
        ssh $1 logcat | grep -i python
    fi
}

function deploy(){
    activity="am start -n $P4A_package/org.renpy.android.PythonActivity -a org.renpy.android.PythonActivity"
    pushd $KIVYANDROID
    apk=$(ls bin/*.apk -t | grep -v unaligned| head -n 1)

    if [ $1 == "adb" ]; then
        adb uninstall $P4A_package
        adb install $apk
        adb shell "$activity"
    else
        tar -c $apk|ssh root@$1 'cd /sdcard/ && tar -x'
        ssh root@$1 "source /sdcard/adb_env &&\
            pm uninstall $P4A_package &&\
            pm install /sdcard/$apk &&\
            $activity"
    fi
    popd
}

function build(){
    rm ${KIVYANDROID}bin/*.apk
    dir=$PWD
    pushd ${KIVYANDROID}

    for p in $P4A_permissions
	    permissions="--permission $p $permissions"

    ./build.py\
	    --dir $dir\
	    --package $P4A_package\
	    --name "$P4A_name"\
	    --version $P4A_version\
	    $permissions\
	    debug
    popd
    unset permissions

    if [ $1 ]; then
	    deploy $1
	    lg $1
    fi
}

function buildall(){
build
for i in $@; do
	deploy $i
done
}

function get_pid(){
ssh $1 "ps | grep $P4A_package"|tr -s ' ' ' '|cut -d' ' -f2
}

function rkill(){
ssh $1 "kill $(get_pid $1)"
}

function p4a_init(){
select dist in $(ls $PYTHON_FOR_ANDROID/dist/)
	break
	echo "package name?"
	read package
	echo "app name?"
	read name
	echo "app version?"
	read version

	<<EOF > .env
	export KIVYANDROID=$PYTHON_FOR_ANDROID/dist/$dist/
	export P4A_package=$package
	export P4A_name=$name
	export P4A_version=$version
	export P4A_permissions=
EOF
   unset dist
   unset package
   unset name
   unset version
   cd .
}
