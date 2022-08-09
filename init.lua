require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colors"
require "user.cmp"
require "user.lsp"
require('telescope').setup{ defaults = { file_ignore_patterns = {".git", "node_modules"} } }
