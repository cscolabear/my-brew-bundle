#!/bin/bash

. ./include_script/style.sh
. ./include_script/option.sh


headerFn "link-simpany-member"

source ./.env



target=".env.local"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany-member/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-member/$target"


target="cypress.env.json"
createLinkFn "$SOURCE_ROOT_PATH/simpany/simpany-member/$target" \
    "$LINK_VSCODE_PROJECT_SIMPANY_PATH/simpany-member/$target"


footerFn
