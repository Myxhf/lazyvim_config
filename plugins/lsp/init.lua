return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",

        "clangd",
        "clang-format",
        "codelldb",

        "bash-language-server",
        "shellcheck",
        "shfmt",

        "verible",
        -- "hdl-checker",

        "json-lsp",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<leader>cr", false }
    end,
    opts = {
      servers = {
        bashls = {},
        verible = {},
        -- hdl_checker = {},
        clangd = {},
        jsonls = {},
      },
    },
  },
}
