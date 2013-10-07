

if ( ! $?shellar ) then
    setenv shellar $HOME/.shellar
endif

source $shellar/shellar/env.tcsh

# library files
foreach lib ($shellar_lib_dir/*)
    set l=$lib:t
    set f=$shellar_lib_dir/$l/$l.tcsh
    if (-f $f) then
        source $f
        endif
 end
unset l nonomatch
unset f nonomatch

# plugins
foreach plugin ( $shellar_plugins )
      set p=$shellar_plugins_dir/$plugin/init.tcsh
        set c=$shellar_custom_plugins_dir/$plugin/init.tcsh
        set pl=${shellar_plugins_dir}/${plugin}/local
        set cl=${shellar_custom_plugins_dir}/${plugin}/local
        if (-f $c) then
            source $c
            if (-d ${cl}) then
                foreach file ("${cl}/*.tcsh")
                    if ("$file" != "") then
                        foreach f (${file})
                          if (-f "${f}") then
                               source $f
                               unset f
                               endif
                               end
                  endif
                 end
                unset file
           endif
        else if (-f $p) then
                source $p
                if (-d ${pl}) then
                    foreach file ("${pl}/*.tcsh")
                        if ("$file" != "") then
                            foreach f (${file})
                                if (-f "${f}") then
                                    source $f
                                    unset f
                                endif
                            end
                        endif
                    end
                   unset file
                endif
        endif
end
unset p nonomatch
unset c nonomatch
unset cl nonomatch
unset pl nonomatch

## bin path
foreach plugin ( $shellar_plugins )
      set p=$shellar_plugins_dir/$plugin/bin
        set c=$shellar_custom_plugins_dir/$plugin/bin
        if (-d $c) then
            set path=($c $path)
        else if (-d $p) then
            set path=($p $path)
        endif
end
unset p nonomatch
unset c nonomatch



# theme
if ( $?shellar_theme) then
        source $shellar_themes_dir/$shellar_theme/$shellar_theme.theme.tcsh
    else
        source $shellar_themes_dir/default/default.theme.tcsh
endif

