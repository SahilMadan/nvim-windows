-- Move to previous/next
vim.api.nvim_set_keymap('n', '<A-h>', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':BufferNext<CR>', { noremap = true, silent = true })

-- Close buffer
vim.api.nvim_set_keymap('n', '<A-c>', ':BufferClose<CR>', { noremap = true, silent = true })
