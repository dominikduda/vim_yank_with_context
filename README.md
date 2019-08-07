<img src="https://raw.githubusercontent.com/dominikduda/config_files/master/dd_logo_blue_bg.png" width="300" height="300" />

# vim_yank_with_context
Plugin copying code to clipboard formatted with line numbers and path to file.

##### Example output
```
 app/views/contractor_cost_summaries/show.html.haml ▾
 --------------------------------------------------
     7	.grid
     8	  .col-7_md-12
     9	    = render 'show_financial_overview'
    10
    11	.grid
    12	  .col-7_lg-10_md-12
    13	    = render 'show_contractors'
```

##### Why should you use it?
  - The plugin is good way to share your code even if your chat does not support block code format
  - No more explaining where this fragment of code comes from
  - Works out of the box!

## Installation
via `Plug`, `Neobundle` or `Vundle`:
```
Plug 'dominikduda/vim_yank_with_context'
NeoBundle 'dominikduda/vim_yank_with_context'
Plugin 'dominikduda/vim_yank_with_context'
```
via `Pathogen`:
```
git clone https://github.com/dominikduda/vim_yank_with_context.git ~/.vim/bundle/vim_yank_with_context
```

## How to use

Just enter visual line mode (`V`) and click the yank with context mapping (`Control + y` by default).

## Customization (values written here are defaults)

#### Change yank with context mapping:

```vim
let g:vim_yank_with_context#yank_mapping =  '<C-y>'
```

