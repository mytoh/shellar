

# lehti {{{
if  ( $?MOSH_LOADPATH ) then
setenv MOSH_LOADPATH `lehti setup load-path`:${MOSH_LOADPATH}
else
setenv MOSH_LOADPATH `lehti setup load-path`
endif
 
if  ( $?YPSILON_SITELIB ) then
setenv YPSILON_SITELIB `lehti setup load-path`:${YPSILON_SITELIB}
else
setenv YPSILON_SITELIB `lehti setup load-path`
endif

if ( ! $?LEHTI_DIR ) then
setenv LEHTI_DIR "${HOME}/.lehti"
endif

setenv PATH "${LEHTI_DIR}/bin:${PATH}"

eval `lehti completion tcsh`
# }}}

