## global variables
if not set -q shellar
  set -gx shellar {$HOME}/.config/shellar
end
set -gx shellar_bin_path {$shellar}/bin
set -gx shellar_lib_path {$shellar}/lib
set -gx shellar_bottles_path {$shellar}/bottles
set -gx shellar_themes_path {$shellar}/themes

## custom
if not set -q shellar_custom
  set -gx shellar_custom {$HOME}/.shellar_custom
end
set -gx shellar_custom_bottles_path {$shellar_custom}/bottles

## shellar script
set -gx PATH {$shellar_bin_path} {$PATH}
