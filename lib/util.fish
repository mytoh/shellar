
function shellar.register_paths --argument dir
  # [[http://github.com/mashiro/dot-files/blob/master/.zshenv]]
  if test -d {$dir}
    # bin
    if test -d {$dir}/bin
      and not contains {$dir}/bin {$PATH}
      set -gx PATH {$dir}/bin {$PATH}
    end
    # sbin
    if test -d {$dir}/sbin
      and not contains {$dir}/sbin {$PATH}
      set -gx PATH {$dir}/sbin {$PATH}
    end
    # info
    if test -d {$dir}/info
      and not contains {$dir}/info {$INFOPATH}
      set -gx INFOPATH {$dir}/info {$INFOPATH}
    end
  end
end

function shellar.push_to_path --description "add path to PATH variable"
  for p in {$argv}
    if test -d {$p}
      if not contains {$p} {$PATH}
        # set -gx PATH {$p} {$PATH}
        if set -q fish_user_paths
       set -U fish_user_paths $fish_user_paths {$p}
       else
       set -U fish_user_paths  {$p}
       end
      end
    end
  end
end

function shellar.command_exists --argument cmd --description "check command existance"
  if type -f {$cmd} >  /dev/null
    true
  else
    false
  end
end

function shellar.add_variable --argument var value
if not contains {$value} {$$var}
  set -gx {$var} {$value} {$$var}
end
end

function shellar.xsource --description "source file if exists"
  for i in {$argv}
    if test -f {$i}
      source {$i}
    end
  end
end

function shellar.source_all --argument dir --description "source all files under directory"
    if test -d {$dir}
      for file in {$dir}/*.fish
        source {$file}
      end
    end
end

function shellar.log --argument message
 if set -q shellar_debug
 echo {$message}
end
end
