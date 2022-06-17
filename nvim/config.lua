-- SETUP VIM:

local set = vim.opt
local cmd = vim.cmd
-- runtimepath
set.runtimepath="$HOME/.,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after"
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

-- PLUGINS:

require('packer').init({
        display = {
           non_interactive = true
        }
})

return require('packer').startup(function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
      
        use 'antoinemadec/FixCursorHold.nvim' -- generic dependencie

        use 'Konfekt/FastFold' --  speed up vim
            
        use 'tpope/vim-fugitive' -- git wrapping
        
        use 'lewis6991/impatient.nvim' -- also spped it up
                   
        use {
                'goolord/alpha-nvim',
                requires = { 'kyazdani42/nvim-web-devicons' },
                config = function ()
                      require'alpha'.setup(require'alpha.themes.dashboard'.config)
                end
        }
			  
        use {'datwaft/bubbly.nvim', config = function()
          vim.g.bubbly_palette = {
            background = "#34343c",
            foreground = "#c5cdd9",
            black = "#3e4249",
            red = "#ec7279",
            green = "#a0c980",
            yellow = "#deb974",
            blue = "#6cb6eb",
            purple = "#d38aea",
            cyan = "#5dbbc1",
            white = "#c5cdd9",
            lightgrey = "#57595e",
            darkgrey = "#404247",
          }
          vim.g.bubbly_statusline = {
            'mode',
            'truncate',
            'path',
            'branch',
            'filetype',
            'progress',
          }
        end}
			  
			
        use {
             'nvim-telescope/telescope.nvim',
                requires = { {'nvim-lua/plenary.nvim'} }
        }
        use { "nvim-telescope/telescope-file-browser.nvim" }
        
        use "rebelot/kanagawa.nvim"
    
        config = {
          -- Move to lua dir so impatient.nvim can cache it
          compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua' 
        }
end)

-- install said plugins:
vim.cmd [[packadd]]

-- CONFIGURE SAID PLUGINS:
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
                dashboard.section.header.val ={"BOO!",}

        dashboard.section.buttons.val = {
                dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "  Find text", ":Telescope live_grep <CR>"),
                dashboard.button("m", "  Bookmarks", ":Telescope marks <CR>"),
                dashboard.button("e", " File Explorer",":Telescope file_browser<CR>"),
                dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
                dashboard.button("q", "  Quit Neovim", ":q!<CR>"),
        }


        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
require("telescope").setup {
  extensions = {
		file_browser = {
		    theme = "ivy",
		}
     }
}	
require("telescope").load_extension "file_browser"

-- set colorscheme
vim.cmd [[ colorscheme kanagawa ]]
