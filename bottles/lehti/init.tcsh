
## lehti {{{

if ( ! ${?lehti} ) then
setenv lehti ${HOME}/.config/lehti
endif

setenv lehti_lib "${lehti}/lib"
setenv lehti_bin "${lehti}/bin"
set -f path=(${lehti_bin} ${path})


if  ( ${?GAUCHE_LOAD_PATH} ) then
setenv GAUCHE_LOAD_PATH "${lehti_lib}:${GAUCHE_LOAD_PATH}"
setenv GAUCHE_LOAD_PATH "`lehti setup load-path`:${GAUCHE_LOAD_PATH}"
else
setenv GAUCHE_LOAD_PATH "${lehti_lib}"
setenv GAUCHE_LOAD_PATH "`lehti setup load-path`:${GAUCHE_LOAD_PATH}"
endif


# }}}


