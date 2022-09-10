local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)



  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "nvim-telescope/telescope-symbols.nvim"
  -- use "jremmen/vim-ripgrep"
  use "dyng/ctrlsf.vim"


  -- Themes
 use "vim-scripts/CSApprox"

 use "sjl/badwolf"
 use "sonph/onehalf"
 use "nlknguyen/papercolor-theme"
 use "joshdick/onedark.vim"
 use "sainnhe/sonokai"
 use {'srcery-colors/srcery-vim', as = 'srcery'}
 use "ayu-theme/ayu-vim"


  -- Vim Air Line
  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Formatting
  use "ryanoasis/vim-devicons"
  use "kyazdani42/nvim-web-devicons"
  use "sbdchd/neoformat"
  use 'mattn/emmet-vim'
  -- IDE
  use "preservim/nerdtree"
  use "tiagofumo/vim-nerdtree-syntax-highlight"

  -- Essentials
  use "tpope/vim-commentary"
  use "tpope/vim-surround"
  use "tpope/vim-fugitive"
  use "airblade/vim-gitgutter"
  use 'AndrewRadev/tagalong.vim'

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  use "github/copilot.vim"
  use "vim-syntastic/syntastic"
  use "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"

  -- Web Server
  use "turbio/bracey.vim"

  -- Ruby on rails
  use "tpope/vim-rails"
  use "vim-test/vim-test"

  -- Vim Move
  use 'matze/vim-move'

  -- React Dev
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
