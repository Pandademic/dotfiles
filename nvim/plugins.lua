vim.cmd [[packadd packer.nvim]]

require('packer').init({
        display = {
           non_interactive = true
        }
})

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim', opt=true }
    
     use 'antoinemadec/FixCursorHold.nvim' -- generic dependencie

     use 'Konfekt/FastFold' --  speed up vim
            
     use 'tpope/vim-fugitive' -- git wrapping
        
     use 'lewis6991/impatient.nvim' -- also spped it up
