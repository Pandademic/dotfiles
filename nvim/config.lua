local set = vim.opt
local cmd = vim.cmd
-- runtimepath
set.runtimepath="$HOME/.,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after"
-- statusline
cmd[[source $HOME/.vim/statusline.vim]]
-- keybindings
cmd[[source $HOME/.vim/keybindings.vim]]
-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
-- set indent
set.autoindent = true
-- general
set.encoding='utf-8'
set.mouse='a'
cmd[[
let g:vimsyn_embed = 'lPr' " emeded script hightlighting , eg: lua in vim (lPr) = luaPythonruby
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set synmaxcol=180
]]
--Clipboard settings, always use clipboard for all delete, yank, change, put
cmd[[
set clipboard+=unnamed
set clipboard+=unnamedplus
]]
-- ignorant , I am of:
cmd[[
set wildignore+=*/node_modules/*
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.pdf
set wildignore+=*/target/ 
]]
-- Character to show before the lines that have been soft-wrapped , eg: in split screen  when lines break
set.showbreak=""
