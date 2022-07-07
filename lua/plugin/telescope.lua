-- Find files using Telescope command-line sugar
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fs', '<cmd>Telescope git_status<CR>', { noremap = true})
-- List function names and variables from Treesitter
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope treesitter<CR>', { noremap = true})
-- List registers
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>Telescope registers<CR>', { noremap = true})
