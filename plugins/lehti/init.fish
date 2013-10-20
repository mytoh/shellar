# lehti {{{

if test -z {$LEHTI_DIR}
  set -gx LEHTI_DIR {$HOME}/.config/lehti
end

set lehti {$LEHTI_DIR}
set lehti_lib {$lehti}/lib
set lehti_bin {$lehti}/bin

set -gx PATH {$lehti_bin} {$PATH}

if test -n {$MOSH_LOADPATH}
  set -gx MOSH_LOADPATH {$lehti_lib} {$MOSH_LOADPATH}
  set -gx MOSH_LOADPATH (lehti setup load-path fish) {$MOSH_LOADPATH}
else
  set -gx MOSH_LOADPATH {$lehti_lib}
  set -gx MOSH_LOADPATH (lehti setup load-path fish) {$MOSH_LOADPATH}
end
# }}}

