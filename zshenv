export PATH="/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/sbin:$HOME/bin"

export VISUAL=vim
export EDITOR=vim

# Permissions rw-r--r-- pour les fichiers crées
# et rwxr-xr-x pour les répertoires crées
umask 022

# easy Proxy HTTP / FTP passwordless
#export http_proxy="http://proxy.exemple.org:8080"
#export ftp_proxy="ftp://proxy.exemple.org:8080"

# easy Proxy HTTP / FTP with password
#export http_proxy="http://login:password@proxy.exemple.org:8080"
#export ftp_proxy="ftp://login:password@proxy.exemple.org:8080"

#export no_proxy="exemple.org"

export GREP_OPTIONS='--color=auto'

# android dev
export PATH=$PATH:~/android-sdk-linux_x86/tools:~/android-sdk-linux_x86/platform-tools

# kivy dev
export KIVYANDROID=~/python-for-android/dist/default/

