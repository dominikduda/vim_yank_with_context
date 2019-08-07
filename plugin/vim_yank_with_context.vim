let g:vim_yank_with_context#yank_mapping = get(g:, 'vim_yank_with_context#yank_mapping', "<C-y>")

command! YankWithContext call vim_yank_with_context#main()
execute 'xnoremap <expr> ' . g:vim_yank_with_context#yank_mapping . ' { "V": "\<ESC>:YankWithContext\<CR>", "v": "" }[mode()]'
