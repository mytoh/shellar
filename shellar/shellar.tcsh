

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

        # plugins
        foreach plugin ( $shellar_plugins )
        set p=$shellar_plugins_dir/$plugin/init.tcsh
        set c=$shellar_custom_plugins_dir/$plugin/init.tcsh
        if (-f $c) then
            source $c
        else if (-f $p) then
                source $p
                endif
                end

                # theme
                if ( $?shellar_theme) then
                    source $shellar_themes_dir/$shellar_theme/$shellar_theme.theme.tcsh
                else
                    source $shellar_themes_dir/default/default.theme.tcsh
                    endif
