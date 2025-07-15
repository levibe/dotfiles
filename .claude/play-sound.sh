#!/bin/bash

# Play a tone when Claude events occur
# Usage: play-sound.sh [sound_name]
# Examples: play-sound.sh blow, play-sound.sh glass, play-sound.sh tink

SOUND_NAME=${1:-blow}  # Default to blow if no parameter provided

case "$SOUND_NAME" in
    blow)
        afplay /System/Library/Sounds/Blow.aiff
        ;;
    glass)
        afplay /System/Library/Sounds/Glass.aiff
        ;;
    tink)
        afplay /System/Library/Sounds/Tink.aiff
        ;;
    *)
        # Default fallback
        afplay /System/Library/Sounds/Blow.aiff
        ;;
esac