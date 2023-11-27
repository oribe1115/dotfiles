local options = {
  swapfile = false,
  spelllang = 'en_us',
  spell = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
