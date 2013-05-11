
set loitsu=${HOME}/.loitsu
set loitsu_lib=${loitsu}/lib
set loitsu_bin=${loitsu}/bin

setenv PATH ${loitsu_bin}:${PATH}

# mosh
setenv MOSH_LOADPATH ${loitsu_lib}

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


