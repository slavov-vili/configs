#!/bin/bash

# Inspired by https://github.com/BorisWilhelms/rofi-emoji-picker

source $HOME/.config/rofi/scripts/rofi_menu.sh


PROMPT="Emoji:"
ROFI_OPTIONS+=(-scroll-method 0)
THEME="$HOME/.config/rofi/widgets/two_column_menu.rasi"
THEME_CHANGES="element{children: [element-text];}"


CURRENT_SUBGROUP=""
EMOJIS_FILE="$HOME/.cache/emoji-data.txt"
EMOJI_LINE_PATTERN="^[a-zA-Z0-9]+.*fully-qualified +# (.*?) [E0-9\\.]+ (.*)"
SUBGROUP_PATTERN="# subgroup: (.*)"



function parseEmojiData(){
    while read LINE
    do
        if [[ "$LINE" =~ $SUBGROUP_PATTERN ]]; then
            CURRENT_SUBGROUP=${BASH_REMATCH[1]}
        elif [[ "$LINE" =~ $EMOJI_LINE_PATTERN ]]; then
            echo "${BASH_REMATCH[1]} [$CURRENT_SUBGROUP] ${BASH_REMATCH[2]}"
        fi
    done < <(curl -sL 'https://unicode.org/Public/emoji/14.0/emoji-test.txt')
};



if [ ! -f "$EMOJIS_FILE" ]; then
    parseEmojiData > $EMOJIS_FILE
fi


RESULT=$(launchMenuFromFile "$EMOJIS_FILE")
echo -en ${RESULT%% *} | xclip -selection clipboard
