return {
    {
    "folke/persistence.nvim",
    keys = {
      { "<leader>qs", false },
      { "<leader>ql", false },
      { "<leader>qd", false },
      { "<leader>as", function() require("persistence").load() end, desc = "Restore Session" },
      { "<leader>al", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
      { "<leader>ad", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
    },
  },

  {
    'voldikss/vim-translator',
    event = "VeryLazy",
  }
}
