
## lehti {{{

if ( ! ${?LEHTI_DIR} ) then
    setenv LEHTI_DIR ${HOME}/.config/lehti
endif

set lehti=${LEHTI_DIR}
set lehti_lib=${lehti}/lib
set lehti_bin=${lehti}/bin

setenv PATH "${lehti_bin}:${PATH}"

if  ( ${?MOSH_LOADPATH} ) then
    setenv MOSH_LOADPATH "${lehti_lib}:${MOSH_LOADPATH}"
    setenv MOSH_LOADPATH "`lehti setup load-path`:${MOSH_LOADPATH}"
else
    setenv MOSH_LOADPATH "${lehti_lib}"
    setenv MOSH_LOADPATH "`lehti setup load-path`:${MOSH_LOADPATH}"
endif

if  ( $?YPSILON_SITELIB ) then
    setenv YPSILON_SITELIB `lehti setup load-path`:${YPSILON_SITELIB}
else
    setenv YPSILON_SITELIB `lehti setup load-path`
endif

eval `lehti completion tcsh`
# }}}


