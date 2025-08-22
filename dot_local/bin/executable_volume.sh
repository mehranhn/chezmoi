#!/bin/sh

TARGET="@DEFAULT_AUDIO_SINK@"
AMOUNT=5
ACTION="change"
NOTIF_ID=9000
NOTIF_ICON="volume-high-solid"
NOTIF_TITLE="Sound"

case "${1:-}" in
    sink)
        TARGET="@DEFAULT_AUDIO_SINK@"
        NOTIF_ID=9000
        NOTIF_ICON="volume-high-solid"
        NOTIF_TITLE="Sound"
        ;;
    source)
        TARGET="@DEFAULT_AUDIO_SOURCE@"
        NOTIF_ID=9001
        NOTIF_ICON="microphone-lines-solid "
        NOTIF_TITLE="Microphone"
        ;;
    *)
        echo "Error: Unknown target '$1'. Use -h for help." >&2
        exit 1
        ;;
esac

if [ -n "${2:-}" ]; then
    case "$2" in
        toggle-mute|mute|toggle)
            ACTION="toggle-mute"
            ;;
        *)
            # Check if the argument is a valid number (positive or negative)
            if [[ "$2" =~ ^-?[0-9]+$ ]]; then
                AMOUNT=$2
                ACTION="change"
            else
                echo "Error: Second argument must be a number or 'toggle-mute'. Got: '$2'" >&2
                exit 1
            fi
            ;;
    esac
fi

case "$ACTION" in
    toggle-mute)
        # Toggle mute state
        current_mute=$(wpctl get-volume "$TARGET" | grep -o "\[MUTED\]" || echo "")
        if [ -n "$current_mute" ]; then
            wpctl set-mute "$TARGET" 0
            echo "Unmuted $TARGET"
            current_vol=$(wpctl get-volume "$TARGET" | awk '{print $2}')
            new_vol_percent=$(echo "$current_vol * 100" | bc | awk '{printf "%.0f", $1}')
            dunstify -r "$NOTIF_ID" -a mcontrol -u low -i $NOTIF_ICON -h "int:value:$new_vol_percent" "$NOTIF_TITLE" 'Muted'
        else
            wpctl set-mute "$TARGET" 1
            echo "Muted $TARGET"
            dunstify -r "$NOTIF_ID" -a mcontrol -u low -i $NOTIF_ICON -h "int:value:0" "$NOTIF_TITLE" 'Muted'
        fi
        ;;
    change)
        # Get the current volume
        current_vol=$(wpctl get-volume "$TARGET" | awk '{print $2}')
        
        # Calculate new volume (current + amount/100)
        new_vol=$(echo "scale=2; $current_vol + ($AMOUNT/100)" | bc)
        
        # Cap the volume between 0% and 100%
        if [ $(echo "$new_vol > 1.0" | bc -l) -eq 1 ]; then
            new_vol=1.0
        elif [ $(echo "$new_vol < 0.0" | bc -l) -eq 1 ]; then
            new_vol=0.0
        fi
        
        # Set the new volume
        wpctl set-volume "$TARGET" "$new_vol"
        
        # Output result
        new_vol_percent=$(echo "$new_vol * 100" | bc | awk '{printf "%.0f", $1}')
        echo "Volume $direction to ${new_vol_percent}% for $TARGET."
        dunstify -r "$NOTIF_ID" -a mcontrol -u low -i $NOTIF_ICON -h "int:value:$new_vol_percent" "$NOTIF_TITLE" 'Muted'
        ;;
esac
