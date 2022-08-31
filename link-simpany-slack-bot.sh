#!/bin/bash


. ./include_script/style.sh
. ./include_script/option.sh


headerFn "link-simpany-slack-bot"

source ./.env



target=".env"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany-slack-bot/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-slack-bot/$target"


footerFn
