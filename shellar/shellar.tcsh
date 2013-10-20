

if ( ! ${?shellar} ) then
    setenv shellar ${HOME}/.shellar
endif


## env
setenv shellar_lib_path ${shellar}/lib
setenv shellar_plugins_path ${shellar}/plugins
setenv shellar_themes_path ${shellar}/themes

if ( ! $?shellar_custom ) then
    setenv shellar_custom ${HOME}/.shellar_custom
endif

setenv shellar_custom_plugins_path ${shellar_custom}/plugins

# library files
foreach lib (${shellar_lib_path}/*)
    if ("${lib}" =~ "*.tcsh") then
        if (-f "${lib}") then
             source ${lib}
        endif
    endif
 end
unset file

# plugins
foreach plugin ( ${shellar_plugins} )
      set p=${shellar_plugins_path}/${plugin}/init.tcsh
        set c=${shellar_custom_plugins_path}/${plugin}/init.tcsh
        set pl=${shellar_plugins_path}/${plugin}/local
        set cl=${shellar_custom_plugins_path}/${plugin}/local
        if (-f ${c}) then
            source ${c}
            if (-d ${cl}) then
                foreach file (${cl}/*)
                    if ("${file}" =~ "*.tcsh") then
                        if (-f "${file}") then
                             source ${file}
                        endif
                    endif
                 end
                unset file
           endif
        else if (-f ${p}) then
            source ${p}
            if (-d ${pl}) then
                foreach file (${pl}/*)
                    if ("${file}" =~ "*.tcsh") then
                        if (-f "${file}") then
                            echo ${file}
                               source ${file}
                        endif
                    endif
                 end
                unset file
           endif
    endif
unset p nonomatch
unset c nonomatch
unset cl nonomatch
unset pl nonomatch
end

## bin path
foreach plugin ( ${shellar_plugins} )
      set p=${shellar_plugins_path}/${plugin}/bin
      set c=${shellar_custom_plugins_path}/${plugin}/bin
      if (-d ${c}) then
          set path=(${c} ${path})
      else if (-d ${p}) then
          set path=(${p} ${path})
      endif
unset p nonomatch
unset c nonomatch
end


# theme
if ( ${?shellar_theme}) then
        source ${shellar_themes_path}/${shellar_theme}/theme.tcsh
    else
        source ${shellar_themes_path}/default/theme.tcsh
endif

