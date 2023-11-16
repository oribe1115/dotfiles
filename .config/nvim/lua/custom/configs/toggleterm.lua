local terminal = require('toggleterm.terminal').Terminal

local lazygit = terminal:new({
  cmd = "lazygit",
  direction = "float",
  hidden = true,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
