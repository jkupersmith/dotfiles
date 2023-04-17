-- See `:help vim.keymap.set()`

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without yanking the selected text
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = '[p]aste without yank' })

-- yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = '[y]ank {motion} into system clipboard' })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = '[y]ank to system clipboard' })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = '[Y]ank lines to system clipboard' })

-- delete into void register
vim.keymap.set("n", "<leader>d", "\"_d", { desc = '[d]elete into void register' })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = '[d]elete into void register' })

vim.keymap.set("n", "Q", "<nop>")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
