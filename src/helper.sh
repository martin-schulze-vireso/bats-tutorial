#!/usr/bin/env bash

# @brief Check if this was called for the first time
# @param $1 (optional) path to the first run marker file
_is_first_run() {
    local FIRST_RUN_FILE="${1:-/tmp/bats-tutorial-project-ran}"
    if [[ ! -e "$FIRST_RUN_FILE" ]]; then
        touch "$FIRST_RUN_FILE"
        return 0
    fi
    return 1
}