#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# Set aliases
alias backup-all='backup-rc & backup-vim & backup-task'
alias backup-rc='zip ~/Backups/rc_bak.zip ~/.*rc ~/.bash_profile'
alias backup-task='zip -r ~/Backups/task_bak.zip ~/.task'
alias backup-vim='zip -r ~/Backups/vim_bak.zip ~/.vim'
alias browse='chromium &'
alias chrome='chromium &'
alias entar='tar -czvf'
alias ffx='firefox &'
alias idea='idea &'
# logout and lock require lightdm (or at least dm-tool)
alias quit-cin='cinnamon-session-quit'
alias lock='dm-tool lock'
alias off='poweroff'
alias open='xdg-open'
alias res='reboot'
alias untar='tar -xvzf'

alias baks='cd ~/Documents/Backups'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'
alias dracket='drracket'
alias gogo='docs && cd Go_stuff'
alias gohiwi='docs && cd HiWi_stuff'
alias gohskl='docs && cd Haskell_stuff'
alias gojva='docs && cd Java_stuff'
alias golrn='docs && cd Learning_stuff'
alias gorkt='docs && cd Racket_stuff'
alias goscl='docs && cd Scala_stuff'
alias goweb='docs && cd Webentw_stuff'

alias mnt-win='sudo mkdir -p /run/media -p /run/media/vilskin && sudo mount /dev/sda4 /run/media/vilskin'
alias umnt-win='sudo umount /dev/sda4'
alias gowin='cd /run/media/vilskin/Users/Velislav && ls -d */'
alias gowindoc='cd /run/media/vilskin/Users/Velislav/Documents && ls -d */'
alias gowinuni='cd /run/media/vilskin/Users/Velislav/Documents/University\ Stuff && ls -d */'
alias python35='~/.pyenv/versions/3.5.3/bin/python3.5'
alias pip35='~/.pyenv/versions/3.5.3/bin/pip3.5'
alias spotify='spotify --force-device-scale-factor=2 &'
alias vpn-uni='sudo openconnect --no-system-trust --cafile /etc/ssl/certs/Deutsche_Telekom_Root_CA_2.pem --servercert sha256:831fa4643e532af670ed3be436776ca7f23d089b4ad42a30faa32c443d7a87a8 ras.uni-tuebingen.de'
# Create a new virtual interface through the ethernet port with a static IP
alias set-ethernet='sudo ip link add link enp0s25 name enp0s25.1 type vlan id 1 && sudo ip addr add 192.168.1.1/24 dev enp0s25.1 && sudo ip link set dev enp0s25.1 up && sudo systemctl restart sshd'
alias unset-ethernet='sudo ip link delete enp0s25'

# Create a function, which opens a man file with vim
viman () { man "$1" | vim -; }
gviman () { man "$1" | gvim -; }
