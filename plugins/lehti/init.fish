# lehti {{{

# mosh
if test {$MOSH_LOADPATH}
  set -x MOSH_LOADPATH (lehti setup load-path fish) {$MOSH_LOADPATH}
else
  set -x MOSH_LOADPATH (lehti setup load-path fish)
end

# ypsilon
if test {$YPSILON_SITELIB}
  set -x YPSILON_SITELIB (lehti setup load-path):{$YPSILON_SITELIB}
else
  set -x YPSILON_SITELIB (lehti setup load-path)
end

if test -z {$LEHTI_DIR}
  set -x LEHTI_DIR {$HOME}/.lehti
end

set -x PATH {$LEHTI_DIR}/bin {$PATH}

# }}}