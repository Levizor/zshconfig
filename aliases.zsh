compress(){
	ffmpeg -i $1 -c:v libx265 $2
}



alias mirrors="sudo reflector --verbose --latest 10 --country 'Poland' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"

alias hypr="nvim ~/.config/hypr/hyprland.conf"

alias binds="nvim ~/.config/hypr/binds.conf"

alias i3c="nvim ~/.config/i3/config"

alias aliases="nvim ${ZDOTDIR}/aliases.zsh"

alias zrc="nvim ${ZDOTDIR}.zshrc"

alias cp="cp -r"

alias tree="tree --dirsfirst"

alias compress="compress()"

alias pjatk="sshfs s30243@sftp.pjwstk.edu.pl:/ ~/pja/ -o allow-other -o user"

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias ls="lsd --group-directories-first"

alias la="lsd -a --group-directories-first"

alias ll="lsd -al --group-directories-first"

alias cmatrix="cmatrix -C black"

alias htheme="nvim ~/.config/hypr/hyprtheme.conf"

alias z="zathura"

alias s="source ~/zsh_config/.zshrc"


