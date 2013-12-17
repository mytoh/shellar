
if ( -X talikko ) then

alias tk talikko

set talikko_cmds = (update srcup info deinstall reinstall install search )
complete {talikko,tk} 'p/1/$talikko_cmds/'

endif
