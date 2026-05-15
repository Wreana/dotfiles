return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
        background = {
          dark = "dragon",
        },
      })

      -- Force theme
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
