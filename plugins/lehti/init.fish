
# lehti {{{
if test $MOSH_LOADPATH
  set -x MOSH_LOADPATH (lehti setup load-path fish) $MOSH_LOADPATH
else
  set -x MOSH_LOADPATH (lehti setup load-path fish)
end


if test $YPSILON_SITELIB
  set -x YPSILON_SITELIB (lehti setup load-path):$YPSILON_SITELIB
else
  set -x YPSILON_SITELIB (lehti setup load-path)
end

# }}}

