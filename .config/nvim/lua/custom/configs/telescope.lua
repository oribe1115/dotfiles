local telescope = require("telescope")
local telescopeConfig = require("telescope.config")

local vimgrep_arguments = {unpack(telescopeConfig.values.vimgrep_arguments)}

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

telescope.setup({
  defaults = {
    vimgrep_arguments = vimgrep_arguments,
  },
  pickers = {
    find_files = {
      find_command = {"rg", "--files", "--hidden", "--glob", "!**/.git/*"},
    }
  }
})

telescope.load_extension("live_grep_args")


