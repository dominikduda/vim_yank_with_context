function vim_yank_with_context#main()
  call feedkeys('gv"+y', 'tx')
  let s:copied_text = getreg('+')
  let s:top_selected_line_number = getpos("'<")[1]
  let s:current_file_path = expand("%")
  let s:numbered_lines = system(
    \ "cat <<'EOF' | nl --body-numbering=a --starting-line-number=" .
    \ s:top_selected_line_number .
    \ "\n" .
    \ s:copied_text .
    \ "EOF")
  let s:separator = repeat("-", strlen(s:current_file_path))
  let s:result = " " . s:current_file_path . " ▾\n " . s:separator . "\n" . s:numbered_lines
  let @+ = s:result
endfunction
