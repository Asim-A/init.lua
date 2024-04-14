return {
  {
    "catppuccin/nvim",
    name = "catppuccin-mocha",
    priority = 1000,
    config = function()
      require("catppuccin").setup({ flavour = "mocha" })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}