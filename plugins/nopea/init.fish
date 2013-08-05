if shellar.command_exists nopea
  function s
    nopea save {$argv}
  end

  function g
    cd (nopea go {$argv})
  end
end

