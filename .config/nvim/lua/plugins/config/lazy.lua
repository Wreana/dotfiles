local earthtone_path = vim.fn.stdpath("config") .. "/lua/colorschemes/earthtone.lua"
if vim.loop.fs_stat(earthtone_path) then
  dofile(earthtone_path)
end
