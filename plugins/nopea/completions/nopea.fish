
function __shellar_nopea_needs_command
  set cmd (commandline -opc)
  if test (count $cmd) -eq 1 -a $cmd[1] = 'nopea'
    return 0
  end
  return 1
end

function __shellar_nopea_go
set list (nopea list)
set dirs

for i in $list
echo $i | awk '{print $1}'
end
end

function __shellar_nopea_using_command
  set cmd (commandline -opc)
  if test (count $cmd) -gt 1 
    if test $argv[1] = $cmd[2]
      return 0
    end
  end
  return 1
end



### list
complete -f -c nopea -n '__shellar_nopea_needs_command' -a list -d 'list names'

### save
complete -f -c nopea -n '__shellar_nopea_needs_command' -a save -d 'register name and path'

### go
complete -f -c nopea -n '__shellar_nopea_needs_command' -a go -d 'print target directory'
complete -f -c nopea -n '__shellar_nopea_using_command go' -a '(__shellar_nopea_go)'
