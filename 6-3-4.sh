# Button: Source Record

sourceName1="Desktop Capture (XSHM)"
sourceName2="WebCam Capture"
filterName="Source Record"

# Execute Filter to Source Record
obs-ws-http SetSourceFilterEnabled "{ \"sourceName\": \"$sourceName1\", \"filterName\": \"$filterName\", \"filterEnabled\": false }"

obs-ws-http SetSourceFilterEnabled "{ \"sourceName\": \"$sourceName2\", \"filterName\": \"$filterName\", \"filterEnabled\": false }"

# Stop Recording
sendmidi dev "Midi Through Port-0" cc 125 0
