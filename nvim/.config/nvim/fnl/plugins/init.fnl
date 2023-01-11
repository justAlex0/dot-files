(import-macros {: pack
                : setup!} :macros)

[{:dir "~/gitclone/parinfer-rust"}
 (pack :rktjmp/hotpot.nvim)
 ;; common dependency
 (pack :nvim-lua/plenary.nvim)

 (pack :rebelot/kanagawa.nvim {:lazy false
                               :priority 1000
                               :init #(vim.cmd "colorscheme kanagawa")
                               :config #((setup! :kanagawa) {:dimInactive true
                                                             :globalStatus true})})
 (pack :folke/tokyonight.nvim {:lazy true
                               :priority 1000
                               ;; :init #(vim.cmd "colorscheme tokyonight-night")
                               :config #((setup! :tokyonight) {:dim_inactive true})})

 (require :plugins.ui)
 (require :plugins.ide)

 ;; greeter
 (require :plugins.alpha)
 ;; completion engine
 (require :plugins.cmp)
 ;; snippet engine
 (require :plugins.snippets)
 ;; Create custom submodes and menus
 (require :plugins.hydra)
 ;; Orgmode clone
 (require :plugins.orgmode)
 ;; syntax highlighting
 (require :plugins.treesitter)

 ;; syntax for Fennel
 ;; (pack :bakpakin/fennel.vim)
 ;; syntax for yuck
 (pack :elkowar/yuck.vim)
 ;; general-purpose motion plugin
 (pack :ggandor/leap.nvim {:config #(vim.api.nvim_set_hl 0 "LeapBackdrop" {:link "Comment"})})
 ;; Smooth scrolling <C-u>, <C-d> ; <C-b>, <C-f> ; <C-y>, <C-e> ; zt, zz, zb
 (pack :karb94/neoscroll.nvim {:config #((setup! :neoscroll))
                               :event "BufRead"})
 ;; magit for neovim
 (pack :TimUntersberger/neogit {:config #((setup! :neogit))})
 ;; A simple wrapper around :mksession.
 (pack :Shatur/neovim-session-manager {:config #((setup! :session_manager) {:autoload_mode (. (require :session_manager.config) :AutoloadMode :Disabled)
                                                                            :autosave_last_session false})})
 ;; Smart and powerful comment plugin for neovim
 (pack :numToStr/Comment.nvim {:config #((setup! :Comment))})
 ;; autopairs
 (pack :m4xshen/autoclose.nvim {:config #((setup! :autoclose) {})
                                :event "InsertEnter"})
 ;; Add/change/delete surrounding delimiter pairs with ease
 (pack :kylechui/nvim-surround {:config #((setup! :nvim-surround))
                                :event "BufRead"})
 ;; Replace with regex
 (pack :nvim-pack/nvim-spectre {:config #((setup! :spectre))})
 ;; Convert selected text into an ASCII tree.
 (pack :xorid/asciitree.nvim {:cmd "AsciiTree"})
 ;; Draw ASCII diagrams
 (pack :jbyuki/venn.nvim {:cmd "VBox"})
 ;; A color highlighter
 (pack :norcalli/nvim-colorizer.lua {:config #((setup! :colorizer) ["css" "scss"] {:css true})
                                     :event "BufRead"})
 ;; highlight and search for todo comments
 (pack :folke/todo-comments.nvim {:config #((setup! :todo-comments))
                                  :event "BufRead"})
 ;; Distraction-free coding
 (pack :folke/zen-mode.nvim {:dependencies [;; dims inactive portions of the code
                                            (pack :folke/twilight.nvim {:config #((setup! :twilight))})]
                             :config #((setup! :zen-mode))
                             :cmd "ZenMode"})
 ;; Flow state reading in neovim
 (pack :nullchilly/fsread.nvim {:cmd ["FSRead" "FSClear" "FSToggle"]})
 ;; icons
 (pack :kyazdani42/nvim-web-devicons)
 ;; This plugin adds indentation guides to all lines (including empty lines)
 ;; (pack :lukas-reineke/indent-blankline.nvim {:config #((setup! :indent_blankline) {:filetype_exclude ["alpha"
 ;;                                                                                                      "help"
 ;;                                                                                                      "terminal"
 ;;                                                                                                      "dashboard"
 ;;                                                                                                      "lspinfo"
 ;;                                                                                                      "lsp-installer"
 ;;                                                                                                      "mason"]})
 ;;                                             :event "BufRead"})
 ;; calculator
 (pack :Apeiros-46B/qalc.nvim {:cmd ["Qalc" "QalcAttach"]})]
