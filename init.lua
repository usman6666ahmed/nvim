require "user.keymaps"
require "user.plugins"
require "user.colors"
require "user.options"
require "user.cmp"
require('telescope').setup{ defaults = { file_ignore_patterns = {".git", "node_modules"} } }
vim.g.neoformat_try_node_exe = 0
