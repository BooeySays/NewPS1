#!/bin/bash

#tree -d -L 1 -i -C --noreport > ~/.tree.tmp

function newls(){
    tree -d -L 1 -i -C --noreport > ~/.tree.tmp
    printf ""$LS_THEME"┏━ Directories ━━━━━━━━━━━┳━ Files ━";printf '━%.s' $(seq 38 $COLUMNS); printf "┓\033[m\n"
    tput sc
    for i in $(\cat ~/.tree.tmp); do
        printf ""$LS_THEME"┃"$i"\r\033[26C┃\n"
    done
    printf "\033["$(\cat ~/.tree.tmp | wc -l)"A\033[27C hi "
#    tput rchi
    }
#

#━
#┃
#┏
#┓
#┗
#┛
#┣
#┫
#┳
#┻
#╋