# Button: UnPixelate

sourceName="Desktop Capture (XSHM)"
filterName="UnPixelate"

# Execute Filter to UnPixelate source
obs-ws-http SetSourceFilterEnabled "{ \"sourceName\": \"$sourceName\", \"filterName\": \"$filterName\", \"filterEnabled\": true }"