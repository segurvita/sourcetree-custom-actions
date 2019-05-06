#!/bin/bash
git branch --merged | grep -vE '^\*|master$|develop$|source$' | xargs -I % git branch -d %