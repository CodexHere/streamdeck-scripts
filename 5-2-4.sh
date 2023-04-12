# Button: Wrap Up Stream

obs-cli scene switch "Ending" &
mic-mute
toggleWebcam

notify-send -h int:transient:1 "Microphone Mute" "Muted"

smoothVolume Music 0.6 1000 &

sleep 15

obs-cli stream stop
notify-send -h int:transient:1 "Stream Status" "Disconnected!"

music-mute

sleep 5

togglePrivate 1

pwQuickConnect Google Music
pwQuickConnect Google Private 1
