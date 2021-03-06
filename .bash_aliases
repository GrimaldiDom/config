alias v='vim'

alias ll='ls -lhA'
alias sl='ls'
alias l='ls -CF'
alias la='ls -A'

alias mkdir='mkdir -p'
alias top='htop'
alias grep='grep --ignore-case --color=auto'
alias unmount='umount'

alias caf='ls -Uba1 | wc -l'
alias cf='ls -Ub1 | wc -l'

# ssh stuff
alias SeedBox='ssh -D 8080 -o LogLevel=ERROR SeedBox'
alias ArchServer='ssh ArchServer'

# systemctl stuff
alias system="sudo systemctl"
alias enable="system enable"
alias disable="system disable"
alias enable-now="system enable --now"
alias disable-now="system disable --now"
alias start="system start"
alias stop="system stop"
alias status="system status"
alias restart="system restart"
alias daemon-reload="system daemon-reload"

# youtube-dl stuff
alias youtube-dl-playlist="youtube-dl --yes-playlist -f best"
alias youtube-dl-playlist-ordered="youtube-dl --yes-playlist -f best -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'"
alias youtube-dl-song="youtube-dl -x --audio-format mp3"
alias youtube-dl-song-playlist="youtube-dl --yes-playlist -x --audio-format mp3 -o '%(playlist_uploader)s - %(playlist_title)s/%(title)s.%(ext)s'"

# openvpn stuff
alias ipv6-stop="sudo sysctl -p" # Has to have the correct settings in /etc/sysctl.conf

# Pulseaudio stuff
alias pulseaudio-restart="pulseaudio -k; pulseaudio --start"

# Constellations
alias Constellations-Laptop="sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,idmap=user,allow_other,IdentityFile=/home/dom/.ssh/nas_id_rsa,reconnect ArchServer:/home/dom/ /home/dom/Server"

# case "$HOSTNAME" in 
#     "LubuntuLaptop"|"ArchDesktop"|"SeedBox")
#         function Andromeda
#         {
#             sshfs -o idmap=user,allow_other,IdentityFile=/home/tor/.ssh/id_rsa,reconnect ArchServer:/home/dom/Constellations/Andromeda ~/Andromeda
#         }
#         function Virgo
#         {
#             sshfs -o idmap=user,allow_other,IdentityFile=/home/tor/.ssh/id_rsa,reconnect ArchServer:/home/dom/Constellations/Virgo ~/Virgo
#         }
#         function Gemini
#         {
#             sshfs -o idmap=user,allow_other,IdentityFile=/home/tor/.ssh/id_rsa,reconnect ArchServer:/home/dom/Constellations/Gemini ~/Gemini
#         }
#         if [ "$HOSTNAME" == "SeedBox" ]; then
#             function restart-tor
#             {
#             sudo systemctl restart jackett smb radarr sonarr@anime sonarr@tv lidarr transmission@movies transmission@anime transmission@tv transmission@music
#             }
#             function Constellations
#             {
#                 Andromeda
#                 Virgo
#                 restart-tor
#             }
#         fi
#         ;;
#     "ArchServer")
#         function Constellations
#         {
#             continue
#         }
#         ;;
# esac
