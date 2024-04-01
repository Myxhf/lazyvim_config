return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<C-n>", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
    },
    opts = {
      window = {
        width = 32,
        mappings = {
          ["h"] = "open",
          ["S"] = "open_split",
          ["s"] = "open_vsplit",
        },
      },
    },
  },

  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          enabled = false,
        },
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>/", false },
      { "<C-f>", LazyVim.telescope("live_grep"), desc = "Grep (Root Dir)" },
    },
  },
}
