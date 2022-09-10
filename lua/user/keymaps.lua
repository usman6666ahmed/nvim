local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Save and quit
keymap("n", "<leader>s", ":w<CR>", opts)
keymap("n", "<leader>q", ":tabclose<CR>", opts)

-- Exiting Insert mode
keymap("i", "jk", "<Esc>", opts)

-- Tabs
keymap("n", "<leader>1", "1gt", opts)
keymap("n", "<leader>2", "2gt", opts)
keymap("n", "<leader>3", "3gt", opts)
keymap("n", "<leader>4", "4gt", opts)
keymap("n", "<leader>5", "5gt", opts)
keymap("n", "<leader>6", "6gt", opts)
keymap("n", "<leader>7", "7gt", opts)
keymap("n", "<leader>8", "8gt", opts)
keymap("n", "<leader>9", "9gt", opts)
keymap("n", "<leader>0", ":tabnew#<CR>", opts)

-- Telescope
keymap("n", "<leader>p", ":Telescope find_files hidden=true<CR>", opts)
-- Ripgrep
keymap("n", "<leader>g", ":CtrlSF ", opts)

-- Formatting
keymap("n", "<leader>ff", ":Neoformat<CR>", opts)

-- Nerd Tree
keymap("n", "<C-b>", ":NERDTreeToggle<CR>", opts)

-- Commentary
keymap("n", "<leader>/", ":Commentary<CR>", opts)
keymap("v", "<leader>/", ":Commentary<CR>", opts)

-- Quality of life
keymap("n", "<leader>c", "$<C-v>^y<Esc>", opts)

-- Rails Vim
keymap("n", "<leader>rv", ":Tview<CR>", opts)
keymap("n", "<leader>rc", ":Tcontroller<CR>", opts)
keymap("i", "do<CR>", "do<CR>end<Esc>O", opts)

-- Testing
keymap("n", "<leader>tt", ":TestFile<CR>", opts)
keymap("n", "<leader>tn", ":TestNearest<CR>", opts)
