return {
  {
    "folke/persistence.nvim",
    keys = {
      { "<leader>qs", false },
      { "<leader>ql", false },
      { "<leader>qd", false },
      {
        "<leader>as",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },
      {
        "<leader>al",
        function()
          require("persistence").load({ last = true })
        end,
        desc = "Restore Last Session",
      },
      {
        "<leader>ad",
        function()
          require("persistence").stop()
        end,
        desc = "Don't Save Current Session",
      },
    },
  },

  {
    "voldikss/vim-translator",
    event = "VeryLazy",
    init = function()
      vim.g.translator_default_engines = { "bing", "haici", "google" }
    end,
  },

  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    config = function()
      require("marks").setup({
        default_mappings = true,
        -- builtin_marks = { ".", "<", ">", "^" },
        cyclic = true,
        force_write_shada = false,
        refresh_interval = 250,
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
        excluded_filetypes = {
          "qf",
          "NvimTree",
          "toggleterm",
          "TelescopePrompt",
          "alpha",
          "netrw",
        },
        bookmark_0 = {
          sign = "",
          virt_text = "hello world",
          annotate = false,
        },
        mappings = {},
      })
    end,
  },

  {
    "max397574/better-escape.nvim",
    event = "VeryLazy",
    config = function()
      require("better_escape").setup({
        mapping = { "jk", "kj" },
        timeout = vim.o.timeoutlen,
        clear_empty_lines = false,
        keys = "<Esc>",
      })
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
