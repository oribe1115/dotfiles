local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Normal Modeでは;を入力すると:になる
keymap("n", ";", ":", opts)

-- Insert ModeでCtrl+nを入力すると、改行して次の行に移動する
keymap("i", "<C-n>", "<C-o>o", opts)
