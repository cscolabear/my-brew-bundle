#!/bin/bash

. ./include_script/style.sh
. ./include_script/option.sh


headerFn "link-simpany-admin"

source ./.env



target=".env"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany-admin/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-admin/$target"

target=".vscode"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany-admin/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-admin/$target"

footerFn
