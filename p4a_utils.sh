# python for android build helpers
#
function lg(){
    ssh $1 logcat | grep -i python| logcat
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
    rm ${KIVYANDROID}bin/*
    dir=$PWD
    pushd ${KIVYANDROID}
    ./build.py\
	    --dir $dir\
	    --package $P4A_package\
	    --name "$P4A_name"\
	    --version $P4A_version\
	    $P4A_permissions\
	    debug
    popd
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
