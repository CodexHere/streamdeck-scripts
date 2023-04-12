# Button: Privacy Block

PRIVACY_SOURCE="Assets - Displays - Overlapped"
PRIVACY_FILTER_NAME="Privacy Block 1"

# Get current value and determine the toggle state
PRIVACY_CURR_VALUE="$(obs-cli-linux GetSourceFilterInfo="{\"sourceName\": \"$PRIVACY_SOURCE\", \"filterName\": \"$PRIVACY_FILTER_NAME\"}" | jq -cr '.[].enabled')"
TOGGLE_STATE=$([[ "false" == "${PRIVACY_CURR_VALUE}" ]] && echo "true" || echo "false")

echo "PRIVACY_SOURCE: $PRIVACY_SOURCE |||| PRIVACY_CURR_VALUE: ${PRIVACY_CURR_VALUE}, TOGGLE_STATE: ${TOGGLE_STATE}"

obs-cli-linux SetSourceFilterVisibility="{\"sourceName\": \"$PRIVACY_SOURCE\", \"filterName\": \"$PRIVACY_FILTER_NAME\", \"filterEnabled\": $TOGGLE_STATE }"
