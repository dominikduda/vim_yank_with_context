command! YankWithContext call vim_yank_with_context#main()
xnoremap <expr> <C-y>  { "V": "\<ESC>:YankWithContext\<CR>", "v": "" }[mode()]
