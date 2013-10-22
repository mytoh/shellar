
set loitsu=${HOME}/.config/loitsu
set loitsu_lib=${loitsu}/lib
set loitsu_bin=${loitsu}/bin

set path=(${loitsu_bin} ${path})

# mosh
if ( ! ${?MOSH_LOADPATH}) then
    setenv MOSH_LOADPATH ${loitsu_lib}
endif

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
