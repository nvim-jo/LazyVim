# Changelog

## 10.4.4 (2023-10-18)


### Bug Fixes

* **project:** don't let `project.nvim` change the cwd. Leads to too much confusion 

## 10.4.3 (2023-10-17)


### Bug Fixes

* **dashboard:** config shortcut when opening dashboard again
* **dot:** treesitter langs in dot extra were not added 
* **keymaps:** let keymap n and N opens folds
* **neotest:** better integration with trouble: no longer steals focus and hides when all ok

## 10.4.2 (2023-10-17)


### Bug Fixes

* **statuscolumn:** correct line numbers & respect more options

## 10.4.1 (2023-10-16)


### Bug Fixes

* **format:** set formatexpr in options so users can override it.
* **ui:** fix BufferLineClose commands

## 10.4.0 (2023-10-16)


### Features

* **keymaps:** added toggle for treesitter highlights
* **lualine:** use gitsigns for diff source
* **markdown:** added headlines.nvim to markdown extra
* **ui:** add keymap to close other buffers


### Bug Fixes

* **conform:** remove LazyVim's conform config changes since that's now merged in conform
* **markdown:** add marksman to mason install
* **root:** root dir for windows.


### Performance Improvements

* **root:** cache root detection.

## [10.3.0](https://github.com/LazyVim/LazyVim/compare/v10.2.0...v10.3.0) (2023-10-15)


### Features

* **dashboard:** `c` on dahboard now opens telescope for config dir instead of useless `init.lua`
* disable kind_filter for markdown and help
* **linting:** ability to configure global and fallback linters
* **lualine:** new root dir component that only shows when cwd != root_dir
* **lualine:** pretty_path now highlights file basename when modified
* **tabnine:** add build cmd for Windows 


### Bug Fixes

* **prettier:** use prettier instead of prettierd. Too many people get truncated files. 
* **python:** add `ft` to Python keymaps, and fix "Markdown Preview" toggle description 
* **root:** dont use single-file lsps for root detection. use workspaces only

## 10.2.0 (2023-10-14)


### Features

* **conform:** make it easier to add `extra_args`
* **conform:** show error when user overwrites conform config function
* **conform:** use conform.nvim `opts.format` options for formatting with conform 
* **extras:** added TabNine
* **format:** use conform as lsp formatter since it has better format diffs
* **go:** add gofumpt formatter with conform/none-ls
* **lang:** add markdown support
* **python:** add key binding for organize imports
* **toggle:** add keymap to toggle treesitter context


### Bug Fixes

* **dashboard-nvim:** repository has moved to nvimdev/dashboard-nvim
* dont lazy-load on ft. Load on cmd or keys only
* **keymaps:** no diagnostic keymaps w/o lsp attached
* **lsp:** trigger FileType commands after installing LSP servers
* **news:** dont show news when it has never been viewed (new install)
* **spectre:** add title to Spectre panel in edgy

## 10.1.1 (2023-10-13)


### Bug Fixes

* **aerial:** use new sep_icon option for aerial lualine component
* **json:** always write version to prevent spurious migrations.

## 10.1.0 (2023-10-12)


### Features

* **config:** `lazyvim.json` is now versioned and migrates to a newer version when needed
* **extras:** LazyExtras can now manage user extras `lua/plugins/extras`.
* **neot-ree:** add keymaps to toggle git & buffer


### Bug Fixes

* **nvim-lint:** check on linter name instead of linter.
* **nvim-lint:** make sure to set custom linters.

## 10.0.1 (2023-10-12)


### Bug Fixes

* **config:** make lazyvim.json idempotent, pretty-printed and remove full paths 
* **toggle:** dont show incorrect deprecation warning for toggle.

## 10.0.0 (2023-10-12)


### ⚠ BREAKING CHANGES

* **starter:** `dashboard.nvim` is now the default starter. To keep using `alpha.nvim`, enable the extra.
* make `conform.nvim` and `nvim-lint` the default formatters/linters

### Features

* added aerial extra with integrations for edgy, telescope and lualine
* added NEWS.md and option to automatically show when changed (enabled by default) 
* **config:** better kind filter default for lua to deal with luals weirdness
* **config:** load/save some data in lazyvim.json
* **config:** make kind filter configurable for telescope/aerial/...
* **config:** use lazy's new custom events (`Event.mappings`) for a better `LazyFile` 
* **dashboard:** added LazyExtras shortcut to dashboard/alpha
* **extras:** added extra for `symbols-outline.nvim`
* **format:** new LazyVim formatter with integrations for lsp/none-ls/conform/eslint/... 
* **inject:** util method to get upvalue
* make `conform.nvim` and `nvim-lint` the default formatters/linters
* **mini.starter:** adding mini.starter to lualine disabled files
* **navic:** moved navic to extras
* **root:** allow custom functions as part of `vim.g.root_spec`
* **root:** cached pretty path function for statuslines
* **root:** customizable root detection and `:LazyRoot` command
* **starter:** `dashboard.nvim` is now the default starter. To keep using `alpha.nvim`, enable the extra.
* **starter:** added Lazy Extras to `mini.starter`
* **treesitter:** add nvim-treesitter-context by default
* **treesitter:** install nvim-ts-autotag by default
* **ui:** added `:LazyExtras` to manage enabled extras in LazyVim
* **ui:** show optional plugins in a different color
* **util:** inject module


### Bug Fixes

* **aerial:** keymap
* **dap:** copy config before overriding args
* **extras:** make sure we use priorities to import extras in correct order
* **format:** always show formatter status even when no sources available
* **lualine:** when opening nvim with a file, show an empty statusline till lualine
* **neo-tree:** during init check global argslist instead of window-local
* **nlua:** make nlua dap work with regular continue
* **notify:** set default zindex=100
* **plugin:** add nvim-treesitter-context rename warning
* **plugin:** enable lazy_file
* **plugin:** show warning of removed core plugin when trying to load them without having the extra
* **root:** only use workspace folders that contain the buffer
* **ui:** dont show left signs on virtual line numbers (wrap).


### Performance Improvements

* **lualine:** get rid of lualine's weird lualine_require
* **plugin:** move all lazy.nvim related code to `lazyvim.util.plugin`
* **util:** split lazyvim.util in smaller separate modules