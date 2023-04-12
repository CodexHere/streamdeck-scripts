# Button: Stream Setup

# Audio Control
mic-mute &
music-high &
flatpak run org.rncbc.qpwgraph &
reaper & 

# Open Chat Popout
google-chrome --new-window 'https://www.twitch.tv/popout/CodexHere/chat?popout=' &

# Open Stream Management Stuffs
google-chrome 'https://dashboard.twitch.tv/u/CodexHere/stream-manager' &
sleep 1
xdg-open 'https://soundtrack.twitch.tv/'

# OBS!
flatpak run com.obsproject.Studio &
sleep 5
toggleWebcam 1
obs-cli scene switch "Starting Soon"
