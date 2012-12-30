
set loitsu=${HOME}/.loitsu
set loitsu_lib=${loitsu}/lib
set loitsu_bin=${loitsu}/bin

setenv PATH ${loitsu_bin}:${PATH}

# mosh
setenv MOSH_LOADPATH  ${loitsu_lib}

# ypsilon
if ( $?YPSILON_SITELIB ) then
setenv YPSILON_SITELIB ${loitsu_lib}:${YPSILON_SITELIB}
else
setenv YPSILON_SITELIB ${loitsu_lib}
endif

if ( $?YPSILON_LOADPATH ) then
setenv YPSILON_LOADPATH ${loitsu_bin}:${YPSILON_LOADPATH}
else
setenv YPSILON_LOADPATH ${loitsu_bin}
endif


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

eval `lehti completion tcsh`
# }}}

