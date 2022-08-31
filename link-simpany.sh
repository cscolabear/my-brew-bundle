#!/bin/bash

. ./include_script/style.sh
. ./include_script/option.sh


headerFn "link-simpany"

source ./.env



target=".env"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany/$target"


target=".vscode"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany/$target"


footerFn
