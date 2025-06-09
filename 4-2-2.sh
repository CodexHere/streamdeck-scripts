# Button: UnPixelate

sourceName="Component - Display"
filterName="UnPixelate"

# Execute Filter to UnPixelate source
obs-ws-http SetSourceFilterEnabled "{ \"sourceName\": \"$sourceName\", \"filterName\": \"$filterName\", \"filterEnabled\": true }"
