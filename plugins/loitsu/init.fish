set loitsu $HOME/.loitsu
set loitsu_lib $loitsu/lib
set loitsu_bin $loitsu/bin
 
set -x PATH $loitsu_bin $PATH

# mosh
if test $MOSH_LOADPATH
set -x MOSH_LOADPATH $loitsu_lib $MOSH_LOADPATH
else
set -x MOSH_LOADPATH $loitsu_lib
 end
 
# ypsilon
 if test $YPSILON_SITELIB
set -x YPSILON_SITELIB $loitsu_lib $YPSILON_SITELIB
 else
  set -x YPSILON_SITELIB $loitsu_lib
 end
 
if test $YPSILON_LOADPATH
set -x YPSILON_LOADPATH $loitsu_bin $YPSILON_LOADPATH
else
set -x YPSILON_LOADPATH $loitsu_bin
end