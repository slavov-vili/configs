#
# ~/.bash_profile
#

[[ -f ~/.extend.bash_profile ]] && . ~/.extend.bash_profile
[[ -f ~/.bashrc ]] && . ~/.bashrc


# Set default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin"
export PATH
# Set vim as editor
export EDITOR="/usr/bin/vim"
# Set the Jdk path
export JAVA_HOME="/usr/lib/jvm/java-8-jdk"
export PATH="$JAVA_HOME/bin:$PATH"
# Set Go environment variables and reset path
export GOROOT="$HOME/go"
export GOBIN="$GOROOT/bin"
export GOARCH="amd64"
export GOOS="linux"
export GOPATH="$HOME/Documents/Go_stuff"
export PATH="$PATH:$GOBIN"
# Set environment variables to scale QT applications
export QT_AUTO_SCREEN_FACTOR=1



if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	 exec startx
fi


