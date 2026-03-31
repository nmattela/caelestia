# Get terminal emulator
set TERM_EMULATOR (ps -aux | grep (ps -p $fish_pid -o ppid=) | awk 'NR==1{print $11}')

switch "$TERM_EMULATOR"
case '*kitty*'
    neofetch --backend 'kitty'
case '*tmux*' '*login*' '*sshd*' '*konsole*'
    neofetch --backend 'ascii' --ascii_distro 'arch_small' 
case '*'
    neofetch --backend 'w3m' --xoffset 34 --yoffset 34 --gap 0
end