return {
    {
      "linux-cultist/venv-selector.nvim",
      dependencies = {
        "neovim/nvim-lspconfig",
        { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
      },
      ft = "python", -- Load when opening Python files
      opts = { -- this can be an empty lua table - just showing below for clarity.
          search = {
            poetry = {
                command = "poetry env info -p",
            },
            cwd = {
                command= "find . -type d -name '.venv' -prune",
            },
          }, -- if you add your own searches, they go here.
          options = {
              picker = "telescope",
              show_telescope_search_type = true,
          } -- if you add plugin options, they go here.
      },
    }

}
