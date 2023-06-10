# Button: Stream Setup

# Audio Control
mic-mute &
music-high &

# Run `qpwgraph` if it isn't already
flatpak ps | grep qpwgraph
(( $? != 0 )) && flatpak run org.rncbc.qpwgraph &

# Run `reaper` if it isn't already
ps ux | grep reaper | grep -v grep
(( $? != 0 )) && reaper &

# Open Chat Popout
google-chrome --new-window 'https://www.twitch.tv/popout/CodexHere/chat?popout=' &
sleep 1

# Open Stream Management Stuffs
google-chrome 'https://dashboard.twitch.tv/u/CodexHere/stream-manager' &
sleep 1
xdg-open 'https://play.pretzel.rocks/'

# OBS!
flatpak run com.obsproject.Studio &
sleep 5
toggleWebcam 1
switchToScene "Starting Soon"
