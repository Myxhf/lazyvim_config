return {
  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = require("plugins.configs.header").header,
        center = require("plugins.configs.header").center,
      },
    },
    config = function()
      vim.api.nvim_command("hi DashboardHeader guifg=#a8a8a8")
      vim.api.nvim_command("hi DashboardFooter guifg=#606060")
    end,
  },
}
