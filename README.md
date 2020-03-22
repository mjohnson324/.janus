# My Personal Plugins

My personal collection and configuration of vim plugins.

## Setup

1. clone the repo
2. To add new plugins: `git submodule add <repo>`
3. To remove plugins: `git rm <repo-directory>`
4. To update plugins and install dependencies: `git submodule update --init --recursive`
5. Run `:helptags ALL` in vim to set up help documentation.

## Plugins

- [autoformat](https://github.com/chiel92/vim-autoformat) a plugin for formatting code. Formatters sold separately.
- [airline](https://github.com/vim-airline/vim-airline) a plugin for visualizing file status. Dynamically shows useful information about the current buffer.
- [css-color](https://github.com/ap/vim-css-color) a plugin that highlights css colors with their color.
- [emmet](https://github.com/mattn/emmet-vim) a plugin for fast html coding. Symtax based closely on css selectors.
- [indent-guides](https://github.com/nathanaelkane/vim-indent-guides) a plugin for visualizing indentations.
- [json](https://github.com/elzr/vim-json) better syntax highlighting for JSON files.
- [jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty) jsx syntax highlighting for vim.
- [nerdcommenter](https://github.com/ddollar/nerdcommenter) a plugin for easy commenting in vim.
- [NERDTree](https://github.com/scrooloose/nerdtree) a file tree for vim. Opens automatically when vim is called with a directory.
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) a plugin for viewing the git status of files in NERDTree.
- [rainbow-csv](https://github.com/mechatroner/rainbow_csv) automatically detects and highlights csv columns.
- [surround](https://github.com/tpope/vim-surround) vim commands to augment working with brackets, quotes, and xml tags. use the starting bracket to add with space, the ending one for no space.
- [trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace) a plugin that highlights and can remove trailing whitespace.

## Use Details

- **Autoformat**:
    - `:Autoformat` to format the current buffer. Requires external formatters.
- **Emmet:**
    - Complete commands with `<CTRL>y,` to add a snippet.
- **NerdCommenter**:
    - `<leader>cc`: Comment out the current line(s)
    - `<leader>c<space>`: Toggle comments on the selected lines
    - `<leader>cA`: Add comments to the end of the line
- **Rainbow_CSV**:
    - `:RainbowDelim` to manually activate rainbow hightlighting
    - `:NoRainbowDelim` to deactivate it
    - `:CSVLint` to check csv files.
- **Surround:**
    - `cs<old-bracket><new-bracket>` to substitute the nearest brackets.
    - `ds<bracket>` to delete the nearest brackets
    - `ysiw<bracket>` to surround a word
    - `yss<bracket>` to surround a line
    - `S<bracket>` in visual mode to surround what is highlighted.
- **Trailing-whitespace**:
    - `:FixWhitespace` to remove all offending whitespace automatically
