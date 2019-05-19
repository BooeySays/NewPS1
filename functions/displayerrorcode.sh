#!/bin/bash

function displayexitcode(){
#	zero="\033[01;37m[ \033[32m✔\033[37m ]\033[m"
#	notzero="\033[01;37m[ \033[31m✖\033[37m: \033[31m$?\033[37m ]\033[m"
	RETVAL="$?"
	[ $RETVAL -ne 0 ] && echo -e "\033[01;37m[\033[31m$RETVAL\033[37m]\033[m "
	[ $RETVAL -eq 0 ] && echo -e "\033[01;37m[\033[32m$RETVAL\033[37m]\033[m "
#		echo -e "$notzero";
#	else
#		echo -e "$zero";
#	fi
#unset notzero;
	unset RETVAL
}

if [ ! $OGps1 ]; then
	export OGps1=$PS1;
fi

echo -e '$PS1 backed up to $OGps1\n\n';

export PS1="\`displayexitcode\`$OGps1"

if [ ! $OGps1withexitcode ]; then
	export OGps1withexitcode=$PS1
fi

echo -e "\n\n\t\$PS1 updated and copied to \033[01;31m\$OGps1withexitcode\033[m";


