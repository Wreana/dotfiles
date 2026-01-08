return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local util = require("lspconfig.util")

      opts.servers = opts.servers or {}
      opts.servers.pyright = opts.servers.pyright or {}

      opts.servers.pyright.root_dir = function(fname)
        return util.root_pattern(".venv", "pyproject.toml", "manage.py", ".git")(fname)
      end
    end,
  },
}
