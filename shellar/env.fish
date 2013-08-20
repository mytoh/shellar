
## global variables
if not set -q shellar
  set -gx shellar {$HOME}/.shellar
end
set -gx shellar_bin_dir {$shellar}/bin
set -gx shellar_lib_dir {$shellar}/lib
set -gx shellar_plugins_dir {$shellar}/plugins
set -gx shellar_themes_dir {$shellar}/themes

## custom
if not set -q shellar_custom
  set -gx shellar_custom {$HOME}/.shellar_custom
end
set -gx shellar_custom_plugins_dir {$shellar_custom}/plugins

## shellar script
set -gx PATH {$shellar_bin_dir} {$PATH}