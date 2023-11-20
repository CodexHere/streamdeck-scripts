# Button: Pixelate

sourceName="Desktop Capture (XSHM)"
filterName="Pixelate"

# Execute Filter to Pixelate source
obs-ws-http SetSourceFilterEnabled "{ \"sourceName\": \"$sourceName\", \"filterName\": \"$filterName\", \"filterEnabled\": true }"
