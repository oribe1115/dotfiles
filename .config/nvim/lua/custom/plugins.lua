local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "gopls",
        "typescript-language-server",
        "prettier",
        "eslint-lsp",
        "pyright",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    config = function ()
      require "custom.configs.telescope"
    end
  },
  {
    "fatih/vim-go",
    ft = "go",
    init = function ()
      vim.g.go_fmt_autosave = 1
    end
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  },
  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    opts = function ()
      require "custom.configs.toggleterm"
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "hrsh7th/vim-searchx",
    keys = {
      { "/", "<Cmd>call searchx#start(#{dir: 1})<CR>", mode = { "n", "x" } },
      { "?", "<Cmd>call searchx#start(#{dir: 0})<CR>", mode = { "n", "x" } },
      { "n", "<Cmd>call searchx#next()<CR>", mode = { "n", "x" } },
      { "N", "<Cmd>call searchx#prev()<CR>", mode = { "n", "x" } },
      { "/", "<Cmd>call searchx#start(#{dir: 1})<CR>", mode = { "n", "x" } },
    },
    init = function()
      vim.g.searchx = {
        auto_accept = true,
        scrolloff = vim.opt.scrolloff:get(),
        scrolltime = 0,
        nohlsearch = {
          jump = true,
        },
        markers = vim.split("ASDFGHJKLQWERTYUIOP", ""),
      }
    end,
  },
}

return plugins
