# Button: Pixelate

sourceName="Component - Display"
filterName="Pixelate"

# Execute Filter to Pixelate source
obs-ws-http SetSourceFilterEnabled "{ \"sourceName\": \"$sourceName\", \"filterName\": \"$filterName\", \"filterEnabled\": true }"
