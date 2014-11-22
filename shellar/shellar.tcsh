
    if ( ! ${?shellar} ) then
    setenv shellar ${HOME}/.config/shellar
    endif


    ## env
    setenv shellar_lib_path ${shellar}/lib
    setenv shellar_libexec_path ${shellar}/libexec
    setenv shellar_bottles_path ${shellar}/bottles
    setenv shellar_themes_path ${shellar}/themes

    if ( ! $?shellar_custom ) then
    setenv shellar_custom ${HOME}/.shellar_custom
    endif

    setenv shellar_custom_bottles_path ${shellar_custom}/bottles

    # library files
    foreach lib (${shellar_lib_path}/*)
    if ("${lib}" =~ "*.tcsh") then
        if (-f "${lib}") then
             source ${lib}
        endif
    endif
 end
    unset file

    # bottles
    foreach bottle ( ${shellar_bottles} )
      set p=${shellar_bottles_path}/${bottle}/init.tcsh
        set c=${shellar_custom_bottles_path}/${bottle}/init.tcsh
        set pl=${shellar_bottles_path}/${bottle}/local
        set cl=${shellar_custom_bottles_path}/${bottle}/local
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
    foreach bottle ( ${shellar_bottles} )
      set pb=${shellar_bottles_path}/${bottle}/bin
      set ps=${shellar_bottles_path}/${bottle}/script
      set cb=${shellar_custom_bottles_path}/${bottle}/bin
      set cs=${shellar_custom_bottles_path}/${bottle}/script
      if (-d ${cb}) then
          set path=(${cb} ${path})
      else if (-d ${pb}) then
          set path=(${pb} ${path})
      endif
      if (-d ${cs}) then
          set path=(${cs} ${path})
       else if (-d ${ps}) then
          set path=(${ps} ${path})
      endif
    unset pb nonomatch
    unset ps nonomatch
    unset cb nonomatch
    unset cs nonomatch
    end


    # theme
    if ( ${?shellar_theme}) then
        source ${shellar_themes_path}/${shellar_theme}/theme.tcsh
    else
        source ${shellar_themes_path}/default/theme.tcsh
    endif
