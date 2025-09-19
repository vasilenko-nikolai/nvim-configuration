## Core Dependencies

 - Neovim ≥ 0.9 (latest stable version recommended).
 - Git – required for plugin installation/updates via lazy.nvim.
 - curl or wget – required by mason.nvim to download binaries.
 - tar, unzip – required to unpack archives.
        config = function

## Search & Navigation

 - ripgrep (rg) – required by telescope.nvim for live_grep.
 - fd – used for fast file search

## Fonts & UI

Nerd Fonts (e.g., JetBrainsMono Nerd Font) – required for proper display of icons in nvim-tree, lualine, telescope, etc.

## Language Tooling

⚡ LSP servers, linters and formatters are installed automatically via mason.nvim. However, some runtimes must be available in the system:

 - *Python* - pip
 - *JS* - npm 
