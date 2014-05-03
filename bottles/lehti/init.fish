# lehti {{{

if test -z {$LEHTI_DIR}
  set -gx LEHTI_DIR {$HOME}/.config/lehti
end

set lehti {$LEHTI_DIR}
set lehti_lib {$lehti}/lib
set lehti_bin {$lehti}/bin

set -gx PATH {$lehti_bin} {$PATH}

if test -n {$GAUCHE_LOAD_PATH}
  set -gx GAUCHE_LOAD_PATH {$lehti_lib} {$GAUCHE_LOAD_PATH}
  set -gx GAUCHE_LOAD_PATH (lehti setup load-path fish) {$GAUCHE_LOAD_PATH}
else
  set -gx GAUCHE_LOAD_PATH {$lehti_lib}
  set -gx GAUCHE_LOAD_PATH (lehti setup load-path fish) {$GAUCHE_LOAD_PATH}
end
# }}}

