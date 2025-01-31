#!/bin/bash

github() {
    if [[ $1 == "." ]]; then
        if git remote get-url origin > /dev/null 2>&1; then
            open -a Safari $(git remote get-url origin | sed -E "s/git@([^:]+):/https:\/\/\1\//;s/\.git$//")
        else
            echo "No remote"
        fi
    else
        echo "Usage: github ."
    fi
}

