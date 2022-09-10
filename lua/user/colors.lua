vim.o.background = "dark" -- or "light" for light mode
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.t_Co = "256" -- Support 256 colors
local colorscheme = "onedark"
-- let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
vim.g.CSApprox_attr_map = { bold = "bold", italic = "", sp = "" }

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
