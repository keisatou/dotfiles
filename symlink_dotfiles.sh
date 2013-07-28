for i in `find ${HOME}/Dropbox/Public/dotfile -name '.*' -maxdepth 1`; do base=`basename $i`; cmd="ln -s $i ${HOME}/${base}"; [ ! -e ${HOME}/${base} ] && echo $cmd && $cmd; done
