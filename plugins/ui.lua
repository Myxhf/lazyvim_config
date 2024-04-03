local lsp = {
  function()
    local buf_clients = vim.lsp.get_active_clients({ bufnr = 0 })
    if #buf_clients == 0 then
      return "LSP Inactive"
    end

    local buf_client_names = {}

    for _, client in pairs(buf_clients) do
      if client.name ~= "null-ls" and client.name ~= "copilot" then
        table.insert(buf_client_names, client.name)
      end
    end

    local unique_client_names = table.concat(buf_client_names, ", ")
    local language_servers = string.format("  LSP ~ %s", unique_client_names)

    return language_servers
  end,
  color = { gui = "bold" },
}

return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      opts.config.header = require("plugins.configs.header").header
      opts.config.center = require("plugins.configs.header").center
      vim.api.nvim_command("hi DashboardHeader guifg=#a8a8a8")
      vim.api.nvim_command("hi DashboardFooter guifg=#606060")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    -- event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, lsp)
      opts.sections.lualine_z = {}
    end,
  },

  {
    "folke/noice.nvim",
    keys = {
      { "<leader>snt", "<cmd> Noice telescope <CR>", desc = "Opens message history in Telescope" },
    },
  },

}
