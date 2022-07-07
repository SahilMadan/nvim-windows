-- Set leader key
vim.g.mapleader = ','

-- Ensure mouse scrolling works with Windows terminal
vim.o.mouse = 'a'

-- Show line number
vim.o.number = true

-- Do not continue comments on newlines
vim.opt.formatoptions:remove({'c', 'r', 'o'})

-- Indent new line on the same line as the preceeding line
vim.o.autoindent = false
vim.o.smartindent = true

-- Tab settings
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Files are automatically formatted depending on ftplugin language settings.
-- -- To see the last change made to formatoptions, see
-- --    :verbose set formatoptions
-- -- To avoid having to update every language setting, we can set an autocmd to
-- -- fire on events.
vim.api.nvim_create_augroup('au_formatoption', {clear = true})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "FileType", "OptionSet" }, {
    pattern = "*",
    command = "set formatoptions-=cro | setlocal formatoptions-=cro"
  })
