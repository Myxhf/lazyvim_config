return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
        "make",
        "verilog",
        "python",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<cr>",
          node_incremental = "<cr>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
