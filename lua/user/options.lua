local options = {
    autoindent = true,
    smartindent = true,
    number = true,
    relativenumber = true,
    scrolloff = 20,
    tabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    hls = false,
    hidden = true,
    -- smartcase = true,
    ignorecase = true,
    incsearch = true,
    signcolumn = "yes",
    list = true,
    -- guitablabel = "%t",
    cursorline = false,
    encoding = "UTF-8",
    updatetime = 100,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end



vim.g["user_emmet_leader_key"] = ','
