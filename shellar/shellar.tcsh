
source $shellar/shellar/lib.tcsh

# load library files
foreach lib ($shellar_lib_dir/*)
  set l=`basename $lib`
  set f=$shellar_lib_dir/$l/$l.tcsh
  if (-f $f) then
    source $f
  endif
end

# load plugins
foreach plugin ( $shellar_plugins )
  set f=$shellar_plugins_dir/$plugin/init.tcsh
  if (-f $f) then
    source $f
  endif
end

# load theme
if ( "$shellar_theme" != "" ) then
  source $shellar_themes_dir/$shellar_theme/$shellar_theme.theme.tcsh
else
  source $shellar_themes_dir/default/default.theme.tcsh
endif

