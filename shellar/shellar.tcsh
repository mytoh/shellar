
set  tcsh_base_dir=$shellar
set  tcsh_lib_dir=$tcsh_base_dir/lib
set  tcsh_plugins_dir=$tcsh_base_dir/plugins
set  tcsh_themes_dir=$tcsh_base_dir/themes


# load library files
foreach lib ($tcsh_lib_dir/*)
  set l=`basename $lib`
  if (-f $tcsh_lib_dir/$l/$l.tcsh) then
    source $tcsh_lib_dir/$l/$l.tcsh
  endif
end

# load plugins
foreach plugin ( $plugins )
  if (-f $tcsh_plugins_dir/$plugin/$plugin.plugin.tcsh) then
    source $tcsh_plugins_dir/$plugin/$plugin.plugin.tcsh
  endif
end

# load theme
if ( "$shellar_theme" != "" ) then
  source $tcsh_themes_dir/$shellar_theme/$shellar_theme.theme.tcsh
else
  source $tcsh_themes_dir/default/default.theme.tcsh
endif



