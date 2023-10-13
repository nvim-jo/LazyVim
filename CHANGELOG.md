# Changelog

## [10.1.1](https://github.com/LazyVim/LazyVim/compare/v10.1.0...v10.1.1) (2023-10-13)


### Bug Fixes

* **aerial:** use new sep_icon option for aerial lualine component ([bd1928b](https://github.com/LazyVim/LazyVim/commit/bd1928ba597d777ca79f9f2f4b14217de4c291bc))
* **json:** always write version to prevent spurious migrations. Fixes [#1692](https://github.com/LazyVim/LazyVim/issues/1692) ([01dbd07](https://github.com/LazyVim/LazyVim/commit/01dbd070738a9448ffbdc63602ed9eb5421158da))

## [10.1.0](https://github.com/LazyVim/LazyVim/compare/v10.0.1...v10.1.0) (2023-10-12)


### Features

* **config:** `lazyvim.json` is now versioned and migrates to a newer version when needed ([c989265](https://github.com/LazyVim/LazyVim/commit/c9892652d271663f52edd7b0d88d2565d8f65a52))
* **extras:** LazyExtras can now manage user extras `lua/plugins/extras`. Fixes [#1681](https://github.com/LazyVim/LazyVim/issues/1681) ([1bcf6b9](https://github.com/LazyVim/LazyVim/commit/1bcf6b9a282bc839d4fde92a94b800185ad58118))
* **neot-ree:** add keymaps to toggle git & buffer ([#1339](https://github.com/LazyVim/LazyVim/issues/1339)) ([b31d71d](https://github.com/LazyVim/LazyVim/commit/b31d71da9d6ca6c290a8ee7e7cc7ad5ccb3cc0bd))


### Bug Fixes

* **nvim-lint:** check on linter name instead of linter. Fixes [#1685](https://github.com/LazyVim/LazyVim/issues/1685) ([cdae38d](https://github.com/LazyVim/LazyVim/commit/cdae38ddd44edbf5e124129fc94e9d1038592760))
* **nvim-lint:** make sure to set custom linters. Fixes [#1687](https://github.com/LazyVim/LazyVim/issues/1687) ([8e71968](https://github.com/LazyVim/LazyVim/commit/8e71968c2bd9e59e535cdac0a99e667f8f120322))

## [10.0.1](https://github.com/LazyVim/LazyVim/compare/v10.0.0...v10.0.1) (2023-10-12)


### Bug Fixes

* **config:** make lazyvim.json idempotent, pretty-printed and remove full paths ([2a0b7a8](https://github.com/LazyVim/LazyVim/commit/2a0b7a88ba4b4562361dd5abb4a071547d004e59))
* **toggle:** dont show incorrect deprecation warning for toggle. Fixes [#1679](https://github.com/LazyVim/LazyVim/issues/1679) ([7c7b4be](https://github.com/LazyVim/LazyVim/commit/7c7b4be8dbec5c5e888d02ebdaae944fecf99407))

## [10.0.0](https://github.com/LazyVim/LazyVim/compare/v9.9.1...v10.0.0) (2023-10-12)


### ⚠ BREAKING CHANGES

* **starter:** `dashboard.nvim` is now the default starter. To keep using `alpha.nvim`, enable the extra.
* make `conform.nvim` and `nvim-lint` the default formatters/linters

### Features

* added aerial extra with integrations for edgy, telescope and lualine ([b43c57d](https://github.com/LazyVim/LazyVim/commit/b43c57d943b2a13460d45f01a288e98cb54f2c1f))
* added NEWS.md and option to automatically show when changed (enabled by default) ([73acab1](https://github.com/LazyVim/LazyVim/commit/73acab16758d37982bd6b2d9b2be37c4ee83cde3))
* **config:** better kind filter default for lua to deal with luals weirdness ([f64039f](https://github.com/LazyVim/LazyVim/commit/f64039f54620fe3fc9e8f464e35b184c6834ed6e))
* **config:** load/save some data in lazyvim.json ([11d66e7](https://github.com/LazyVim/LazyVim/commit/11d66e713467410add9ad5a7a68a3bca0aa24082))
* **config:** make kind filter configurable for telescope/aerial/... ([eb7a7d7](https://github.com/LazyVim/LazyVim/commit/eb7a7d7a8e586d30ed6839f4a621e0f019d32410))
* **config:** use lazy's new custom events (`Event.mappings`) for a better `LazyFile` ([4ea1c68](https://github.com/LazyVim/LazyVim/commit/4ea1c6865e6d877207de8626e11a5a863950ae55))
* **dashboard:** added LazyExtras shortcut to dashboard/alpha ([5bb7420](https://github.com/LazyVim/LazyVim/commit/5bb74205a06a89f048902ba142473dd679b228b8))
* **extras:** added extra for `symbols-outline.nvim` ([b4ba5d8](https://github.com/LazyVim/LazyVim/commit/b4ba5d881dcb801d3c502665f9767d2f75ca1110))
* **format:** new LazyVim formatter with integrations for lsp/none-ls/conform/eslint/... ([f1a8f24](https://github.com/LazyVim/LazyVim/commit/f1a8f24a361d0de198f6b1458168652a6835c932))
* **inject:** util method to get upvalue ([14f3f03](https://github.com/LazyVim/LazyVim/commit/14f3f036e9223315f310ba9d35182690638e7bd7))
* make `conform.nvim` and `nvim-lint` the default formatters/linters ([14c091b](https://github.com/LazyVim/LazyVim/commit/14c091b1fc6b0dc0b22ac49ccac69f8a02e3844c))
* **mini.starter:** adding mini.starter to lualine disabled files ([#1667](https://github.com/LazyVim/LazyVim/issues/1667)) ([1c34af7](https://github.com/LazyVim/LazyVim/commit/1c34af7f0138323d9f465437d0bcef621a8dbe94))
* **navic:** moved navic to extras ([305e82f](https://github.com/LazyVim/LazyVim/commit/305e82f2cacd5d0074027ea545a87a41379afc88))
* **root:** allow custom functions as part of `vim.g.root_spec` ([c33e748](https://github.com/LazyVim/LazyVim/commit/c33e7489ecdaef7295a63079410f2f24a1cbc9b6))
* **root:** cached pretty path function for statuslines ([8d7361c](https://github.com/LazyVim/LazyVim/commit/8d7361c4602993a7ea119cb7ce78d421b6787dfb))
* **root:** customizable root detection and `:LazyRoot` command ([a2d6049](https://github.com/LazyVim/LazyVim/commit/a2d604928b5629d14797437a26022065f7385216))
* **starter:** `dashboard.nvim` is now the default starter. To keep using `alpha.nvim`, enable the extra. ([4cbe42c](https://github.com/LazyVim/LazyVim/commit/4cbe42cd247c72dfc70c3fcddfa3fb6b5e6485e0))
* **starter:** added Lazy Extras to `mini.starter` ([ce74e28](https://github.com/LazyVim/LazyVim/commit/ce74e28464daa7d694f9ab4e41fae3174e30c8b3))
* **treesitter:** add nvim-treesitter-context by default ([7b2c317](https://github.com/LazyVim/LazyVim/commit/7b2c31740782fb0754ce715be6ea128083e48c4f))
* **treesitter:** install nvim-ts-autotag by default ([cb7f5ac](https://github.com/LazyVim/LazyVim/commit/cb7f5aca7a04cf2d1d06397e9a80fe078d17976b))
* **ui:** added `:LazyExtras` to manage enabled extras in LazyVim ([c4e55e4](https://github.com/LazyVim/LazyVim/commit/c4e55e4d67a7195b7aa9160cd8ece3ddc2f6cb51))
* **ui:** show optional plugins in a different color ([eedb4a3](https://github.com/LazyVim/LazyVim/commit/eedb4a34050443448d0b752e22803d5b1278b419))
* **util:** inject module ([e239235](https://github.com/LazyVim/LazyVim/commit/e239235cd34ac9c286eac1e620670784566ef673))


### Bug Fixes

* **aerial:** keymap ([c772027](https://github.com/LazyVim/LazyVim/commit/c7720275c3fa8b19c9ad7e05bfb6ed5c510bf2bb))
* **dap:** copy config before overriding args ([72f3cc6](https://github.com/LazyVim/LazyVim/commit/72f3cc684bd1e8f19b2d3c56da3f359032b8c5dc))
* **extras:** make sure we use priorities to import extras in correct order ([a4e3931](https://github.com/LazyVim/LazyVim/commit/a4e393154f61b95da5835b6461e211eb94740268))
* **format:** always show formatter status even when no sources available ([a4abbdc](https://github.com/LazyVim/LazyVim/commit/a4abbdc89bd1d49378ac5873db1279e7e5398927))
* **lualine:** when opening nvim with a file, show an empty statusline till lualine loads ([8373467](https://github.com/LazyVim/LazyVim/commit/83734675b0f93fbd11a350ee0662c09995836b59))
* **neo-tree:** during init check global argslist instead of window-local ([8fbde2c](https://github.com/LazyVim/LazyVim/commit/8fbde2c3668960ed085f9225bb4650aca77cc495))
* **nlua:** make nlua dap work with regular continue. Fixes [#1666](https://github.com/LazyVim/LazyVim/issues/1666) ([85215f3](https://github.com/LazyVim/LazyVim/commit/85215f396b6fd4de24636a202ec1149dafa5f7b5))
* **notify:** set default zindex=100 ([7fb7948](https://github.com/LazyVim/LazyVim/commit/7fb79486ed1b251b98b95a44ef50b3742edd708d))
* **plugin:** add nvim-treesitter-context rename warning ([db5d28b](https://github.com/LazyVim/LazyVim/commit/db5d28b039f656ccb47d3b9f787e8bb482cc6ec1))
* **plugin:** enable lazy_file ([f59cdff](https://github.com/LazyVim/LazyVim/commit/f59cdff4d9f04ff349cefdee0b363d573954ce0d))
* **plugin:** show warning of removed core plugin when trying to load them without having the extra ([3256abd](https://github.com/LazyVim/LazyVim/commit/3256abda65ae03358ecdbef1c7789782440fe39e))
* **root:** only use workspace folders that contain the buffer ([592f3b0](https://github.com/LazyVim/LazyVim/commit/592f3b03bb3cd01df42ee5db4cd6ba43937f067e))
* **ui:** dont show left signs on virtual line numbers (wrap). Fixes [#1654](https://github.com/LazyVim/LazyVim/issues/1654) ([e6d294d](https://github.com/LazyVim/LazyVim/commit/e6d294df6fbd973644d4b7f9691d5f48cc5efdde))


### Performance Improvements

* **lualine:** get rid of lualine's weird lualine_require ([13dbe4a](https://github.com/LazyVim/LazyVim/commit/13dbe4ad55a4e4b9a3dd345521b359411cdc5879))
* **plugin:** move all lazy.nvim related code to `lazyvim.util.plugin` ([70f9195](https://github.com/LazyVim/LazyVim/commit/70f91956e7f03e740b51cbc14c87df6a6f74538f))
* **util:** split lazyvim.util in smaller separate modules ([c8c929c](https://github.com/LazyVim/LazyVim/commit/c8c929c9fdc44cc69cb034c47bd89d2bc4e4a429))