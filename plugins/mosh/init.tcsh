
set break_chars="\"#'(),;\`\\|[]{}"
alias msh 'rlwrap \\
          --ansi-colour-aware \\
          --complete-filenames \\
          --break-chars=${break_chars} \\
          --history-no-dupes=2 \\
          --multi-line \\
          --prompt-colour="1;31" \\
          --remember \\
          mosh'
