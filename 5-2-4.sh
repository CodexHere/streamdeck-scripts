# Button: Wrap Up Stream

switchToScene "End" &
mic-mute
toggleWebcam

smoothVolume Music 0.6 1250 &

sleep 15

obs-ws-http StopStream
notify-send -h int:transient:1 "Stream Status" "Disconnected!"

music-mute

sleep 5

togglePrivate 1

pwQuickConnect Google Music
pwQuickConnect Google Private 1
