#!/bin/bash

export THEME_CLR='\033[38;5;21m'

function __exitcode(){
	CLR_THEME=$THEME_CLR
	RETVAL=$?
	if [ $RETVAL -ne 0 ]; then
		echo -en "\033[m\033[38;5;9m$RETVAL\033[m$CLR_THEME┣━\033[m"
	else
		echo -en "\033[m\033[38;5;10m$RETVAL\033[m$CLR_THEME┣━\033[m"
	fi
#	unset RETVAL
}

function __new_ps1(){
	CLR_THEME=$THEME_CLR
	PS_NAME='Booey'
	PS_HOST='66MHz'
	exitcodeps=$?
#	ps1_exit
	if [ -d ./.git ]; then
		echo -en "$CLR_THEME┏\033[m📂\033[38;5;15m: \033[38;5;11m$(dirs)\033[38;5;39mⁱ\033[m\n$CLR_THEME┗┫\033[m"
		unset exitcodeps
	else
		echo -en "$CLR_THEME┏\033[m📂\033[38;5;15m: \033[38;5;11m$(dirs)\033[m\n$CLR_THEME┗┫\033[m"
#		$exitcodeps$CLR_THEME┣━\033[m\033[38;5;10m$PS_NAME\033[38;5;15m@\033[38;5;10m$PS_HOST\033[m"
		unset exitcodeps
	fi
}
function newpswithexit(){
	__new_ps1;
	__exitcode;
}