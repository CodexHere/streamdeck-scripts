# Button: Kick Off

smoothVolume Music 0.25 500 &

sleep 5

toggleMidiCC 127
ckb-next -m "Standard" &

notify-send -h int:transient:1 "Stream Status" "On Air!"

obs-cli scene switch "Chatting - Solo"
