local function my_custom_commentstring()
  local filetype = vim.bo.filetype
  if filetype == "verilog" then
    return "// %s"
  -- elseif filetype == "c" then
  --   return "// %s"
  end
end

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- cmp engine
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      -- "L3MON4D3/LuaSnip",
      -- "saadparwaiz1/cmp_luasnip",

      -- cmp core
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      -- "hrsh7th/cmp-cmdline",

      -- cmp icon
      -- "onsails/lspkind-nvim",
      "hrsh7th/cmp-nvim-lua",
    },
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<A-e>"] = cmp.mapping.abort(),
        ["<A-i>"] = cmp.mapping.confirm({ select = true }),
      })

      opts.sources = {
        { name = "vsnip" },
        -- { name = "luasnip" },
        {
          name = "nvim_lsp",
          entry_filter = function(entry, _)
            local kind = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]
            -- 定义要过滤掉的类型列表
            local kinds_to_filter = {
              -- 在这里添加更多你想要过滤的类型
              Function = true,
              -- Interface = true,
              -- Reference = true,
              -- Class = true,
            }
            -- 如果条目的类型在过滤列表中，则返回 false，否则返回 true
            return not kinds_to_filter[kind]
          end,
        },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        -- { name = "cmdline" },
      }
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    keys = {
      {
        "<A-l>",
        function()
          require("luasnip").jump(1)
        end,
        mode = { "i", "s" },
      },
      {
        "<A-h>",
        function()
          require("luasnip").jump(-1)
        end,
        mode = { "i", "s" },
      },
    },
    opts = { history = true, updateevents = "TextChanged,TextChangedI" },
    config = function(_, opts)
      require("luasnip.loaders.from_vscode").lazy_load()
      -- load snippets from my-snippets
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { "~/.config/nvim/my-snippets" },
        default_priority = 1001,
      })
      require("luasnip").config.set_config(opts)
    end,
  },

  {
    "echasnovski/mini.comment",
    opts = {
      options = {
        custom_commentstring = my_custom_commentstring,
      },
      mappings = {
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
      },
    },
  },

  {
    "smjonas/inc-rename.nvim",
    event = "VeryLazy",
    config = function()
      require("inc_rename").setup()
    end,
  },

  {
    "echasnovski/mini.pairs",
    config = function()
      require("mini.pairs").setup({
        modes = { insert = true, command = false, terminal = false },
        mappings = {
          ["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
          ["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
          ["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

          [")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
          ["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
          ["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

          ['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
          ["'"] = { action = "close", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
          ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
        },
      })
    end,
  },
}
