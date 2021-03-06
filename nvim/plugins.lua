vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim', opt=true }
    
     use 'antoinemadec/FixCursorHold.nvim' -- generic dependencie

     use 'Konfekt/FastFold' --  speed up vim
            
     use 'tpope/vim-fugitive' -- git wrapping
        
     use 'lewis6991/impatient.nvim' -- also speed it up
     
     use 'junegunn/goyo.vim'   
end)
