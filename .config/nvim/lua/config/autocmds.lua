-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   once = true,
--   callback = function()
--     local earthtone_path = vim.fn.stdpath("config") .. "/lua/colors/earthtone.lua"
--     if vim.loop.fs_stat(earthtone_path) then
--       dofile(earthtone_path)
--     end
--   end,
-- })
--
-- vim.api.nvim_create_user_command("LoadEarthtone", function()
--   local earthtone_path = vim.fn.stdpath("config") .. "/lua/colors/earthtone.lua"
--   if vim.loop.fs_stat(earthtone_path) then
--     dofile(earthtone_path)
--     vim.notify("Earthtone colorscheme loaded!", vim.log.levels.INFO)
--   else
--     vim.notify("Earthtone file not found!", vim.log.levels.ERROR)
--   end
-- end, { desc = "Load Earthtone colorscheme" })

local function apply_wrapped_lines()
  vim.wo.wrap = true
  vim.wo.linebreak = true
  vim.wo.breakindent = true
  vim.wo.colorcolumn = ""
end

apply_wrapped_lines()

vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter" }, {
  callback = apply_wrapped_lines,
})
