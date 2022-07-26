local options = {
    autoindent = true,
    smartindent = true,
    number = true,
    relativenumber = true,
    scrolloff = 20,
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    hls = false,
    hidden = true,
    smartcase = true,
    incsearch = true,
    signcolumn = "yes",
    list = true,
    -- guitablabel = "%t",
    cursorline = false,
    encoding = "UTF-8",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
