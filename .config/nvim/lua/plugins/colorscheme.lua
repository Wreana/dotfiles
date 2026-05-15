local function habamax_bufferline_highlights()
  return {
    fill = { bg = "#121212" },
    background = { fg = "#9e9e9e", bg = "#1c1c1c" },
    buffer_visible = { fg = "#bcbcbc", bg = "#262626" },
    buffer_selected = { fg = "#ffffff", bg = "#303030", bold = true },
    close_button = { fg = "#9e9e9e", bg = "#1c1c1c" },
    close_button_visible = { fg = "#bcbcbc", bg = "#262626" },
    close_button_selected = { fg = "#ffffff", bg = "#303030" },
    modified = { fg = "#ffff87", bg = "#1c1c1c" },
    modified_visible = { fg = "#ffff87", bg = "#262626" },
    modified_selected = { fg = "#ffff87", bg = "#303030" },
    separator = { fg = "#121212", bg = "#1c1c1c" },
    separator_visible = { fg = "#121212", bg = "#262626" },
    separator_selected = { fg = "#121212", bg = "#303030" },
    indicator_selected = { fg = "#5fafd7", bg = "#303030" },
  }
end

local function bufferline_highlight_group(name)
  return "BufferLine" .. name:gsub("(^%l)", string.upper):gsub("_(%l)", function(char)
    return char:upper()
  end)
end

local function normalize_bufferline_icon_backgrounds()
  for _, group in ipairs(vim.fn.getcompletion("BufferLineDevIcon", "highlight")) do
    local hl = vim.api.nvim_get_hl(0, { name = group })
    if hl.fg then
      local bg = "#1c1c1c"
      if group:match("Selected$") then
        bg = "#303030"
      elseif group:match("Inactive$") then
        bg = "#262626"
      end

      vim.api.nvim_set_hl(0, group, { fg = string.format("#%06x", hl.fg), bg = bg })
    end
  end
end

local function apply_habamax_bufferline_highlights()
  for group, hl in pairs(habamax_bufferline_highlights()) do
    vim.api.nvim_set_hl(0, bufferline_highlight_group(group), hl)
  end
  normalize_bufferline_icon_backgrounds()
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "habamax",
  callback = function()
    vim.schedule(apply_habamax_bufferline_highlights)
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.g.colors_name == "habamax" then
      vim.defer_fn(apply_habamax_bufferline_highlights, 100)
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufAdd", "BufEnter" }, {
  callback = function()
    if vim.g.colors_name == "habamax" then
      vim.schedule(normalize_bufferline_icon_backgrounds)
    end
  end,
})

return {
  -- disable other themes
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
  },

  -- Everblush
  {
    "everblush/nvim",
    name = "everblush",
    enabled = false,
  },

  -- set colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "habamax",
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        color_icons = true,
      })
      opts.highlights = vim.tbl_deep_extend("force", opts.highlights or {}, habamax_bufferline_highlights())
    end,
  },

  -- 🌫️ transparency (matches caelestia blur look)
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NormalFloat",
          "FloatBorder",
          "TelescopeNormal",
          "TelescopeBorder",
          "NvimTreeNormal",
          "NeoTreeNormal",
        },
      })
      vim.cmd("TransparentEnable")
      apply_habamax_bufferline_highlights()
    end,
  },

  -- 🔍 Telescope styling (glass effect)
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        winblend = 20,
        borderchars = {
          { " ", " ", " ", " ", " ", " ", " ", " " },
        },
      },
    },
  },

  -- 📊 Lualine (minimal, clean)
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = {
  --     options = {
  --       theme = "auto",
  --       component_separators = "",
  --       section_separators = "",
  --       globalstatus = true,
  --     },
  --   },
  -- },

  -- 🌲 Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
      },
    },
  },
}
