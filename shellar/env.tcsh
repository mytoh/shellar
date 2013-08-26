
set shellar_lib_dir=${shellar}/lib
set shellar_plugins_dir=${shellar}/plugins
set shellar_themes_dir=${shellar}/themes


if ( ! $?shellar_custom ) then
    setenv shellar_custom ${HOME}/.shellar_custom
    endif
    setenv shellar_custom_plugins_dir ${shellar_custom}/plugins
