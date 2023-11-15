local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Normal Modeでは;を入力すると:になる
keymap("n", ";", ":", opts)
