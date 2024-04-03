return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<C-n>", "<leader>e", desc = "Explorer NeoTree (Root Dir)", remap = true },
    },
    opts = {
      filesystem = {
        bind_to_cwd = true,
        window = {
          mappings = {
            ["."] = "set_root",
          },
        },
      },
      window = {
        width = 32,
        mappings = {
          ["l"] = "open",
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

  -- 光标位置标记
  -- {
  --   "LeonHeidelbach/trailblazer.nvim",
  --   lazy = true,
  --   keys = { "<A-s>", "<A-d>" },
  --   config = function()
  --     require("configs.trailblazer")
  --   end,
  -- },
  {
    "LeonHeidelbach/trailblazer.nvim",
    lazy = true,
    keys = { "<A-s>", "<A-d>" },
    config = function()
      -- local HOME = os.getenv("HOME")
      require("trailblazer").setup({
        auto_save_trailblazer_state_on_exit = false,
        auto_load_trailblazer_state_on_enter = false,
        -- custom_session_storage_dir = HOME .. "/.local/share/trail_blazer_sessions/",
        trail_options = {
          mark_symbol = "•", --  will only be used if trail_mark_symbol_line_indicators_enabled = true
          newest_mark_symbol = "󰝥", -- disable this mark symbol by setting its value to ""
          cursor_mark_symbol = "󰺕", -- disable this mark symbol by setting its value to ""
          next_mark_symbol = "󰬦", -- disable this mark symbol by setting its value to ""
          previous_mark_symbol = "󰬬", -- disable this mark symbol by setting its value to ""
        },
        mappings = {
          nv = {
            motions = {
              new_trail_mark = "<A-s>",
              track_back = "<A-d>",
              peek_move_next_down = "<A-J>",
              peek_move_previous_up = "<A-K>",
              move_to_nearest = "<A-n>",
              toggle_trail_mark_list = "<A-o>",
            },
            actions = {
              delete_all_trail_marks = "<A-L>",
              paste_at_last_trail_mark = "<A-p>",
              paste_at_all_trail_marks = "<A-P>",
              set_trail_mark_select_mode = "<A-t>",
              switch_to_next_trail_mark_stack = "<A-.>",
              switch_to_previous_trail_mark_stack = "<A-,>",
              set_trail_mark_stack_sort_mode = "<A-S>",
            },
          },
        },
      })
    end,
  },

  -- 彩虹括号
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPost", "BufNewFile" },
  },

  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>/", false },
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "LazyFile",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      preview_config = {
        -- Options passed to nvim_open_win
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 1,
        col = 1,
      },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        -- stylua: ignore start
        map("n", "]h", gs.next_hunk, "Next Hunk")
        map("n", "[h", gs.prev_hunk, "Prev Hunk")
        map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
        map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
        map("n", "<leader>ghS", gs.stage_buffer, "Stage Buffer")
        map("n", "<leader>ghu", gs.undo_stage_hunk, "Undo Stage Hunk")
        map("n", "<leader>ghR", gs.reset_buffer, "Reset Buffer")
        map("n", "<leader>ghp", gs.preview_hunk, "Preview Hunk Inline")
        map("n", "<leader>ghb", function() gs.blame_line({ full = false }) end, "Blame Line")
        map("n", "<leader>ghd", gs.diffthis, "Diff This")
        map("n", "<leader>ghD", function() gs.diffthis("~") end, "Diff This ~")
        map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
      end,
    },
  },

  {
    "NvChad/nvterm",
    event = "VeryLazy",
    config = function()
      require("nvterm").setup()
      require("nvterm").setup({
        terminals = {
          shell = vim.o.shell,
          list = {},
          type_opts = {
            float = {
              relative = "editor",
              row = 0.1,
              col = 0.1,
              width = 0.8,
              height = 0.8,
              border = "single",
            },
            horizontal = { location = "rightbelow", split_ratio = 0.35 },
            vertical = { location = "rightbelow", split_ratio = 0.47 },
          },
        },
        behavior = {
          autoclose_on_quit = {
            enabled = false,
            confirm = true,
          },
          close_on_exit = true,
          auto_insert = true,
        },
      })
    end,
  },
}
