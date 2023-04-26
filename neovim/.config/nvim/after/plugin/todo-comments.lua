-- See: https://github.com/folke/todo-comments.nvim
--

vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>",
  {silent = true, noremap = true}
)
