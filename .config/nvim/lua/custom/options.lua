local options = {
  swapfile = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
