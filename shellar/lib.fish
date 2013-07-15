set -gx shellar_bin_dir {$shellar}/bin
set -gx shellar_lib_dir {$shellar}/lib
set -gx shellar_plugins_dir {$shellar}/plugins
set -gx shellar_themes_dir {$shellar}/themes

if not set -q shellar_custom
  set -gx shellar_custom {$HOME}/.shellar_custom
end
set -gx shellar_custom_plugin_dir {$shellar_custom}/plugins

# path
set -gx PATH {$shellar_bin_dir} {$PATH}