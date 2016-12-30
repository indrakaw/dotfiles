function fish_prompt
  set_color $fish_color_user --bold
  printf '%s' (whoami)

  set_color normal
  printf ' at '

  set_color $fish_color_host --bold
  printf '%s' (hostname|cut -d . -f 1)

  set_color normal
  printf ' in '

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)

  set_color normal
  echo # Line 2

  if test $VIRTUAL_ENV
    printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end

  set_color $fish_color_normal --bold
  printf '$ '
  #printf '↪ '

  set_color normal
  # end
end
