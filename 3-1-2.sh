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

# Delete Recently Used History, and MOTD semaphore file
rm ~/.local/share/recently-used.xbel
rm /tmp/.motd_shown_*

# Open Chat Popout
google-chrome --new-window --app="https://www.twitch.tv/popout/CodexHere/chat?popout=" &
# Start MIDI Control Overlay (opens browser window)
/media/NFG_GDrive_NFG/CodexHere/Web/midi-control/dockerStart.sh

# Open Stream Management Stuffs
google-chrome --new-window 'https://dashboard.twitch.tv/u/CodexHere/stream-manager' &
sleep 1 #time to let the new window load
google-chrome 'https://www.youtube.com/feed/playlists' &
google-chrome 'https://myactivity.google.com/myactivity?hl=en&utm_source=google-account' &
google-chrome 'chrome://settings/clearBrowserData' &

# Wait for everything to open, particularly MIDI Control
sleep 5

# Run `OBS` if it isn't already
ps aux | grep -v grep | grep obs
(( $? != 0 )) && obs &

# Wait for OBS to start, and then remotely restart obs-ws-http
sleep 10 
ssh nfgarmy.local docker restart obs-ws_toxicice

sleep 5

toggleWebcam 1

switchToScene "Starting Soon"

# Open VSCode to edit our Ticker Text
xdg-open /media/NFG_GDrive_NFG/NFG\ Graphics/Streaming_Redux/Overlay/web/overlay-ticker

