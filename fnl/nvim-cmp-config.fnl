(var nvim-cmp-config {
  ;; Autocompletion
  1 :hrsh7th/nvim-cmp
  :dependencies [

    ;; Snippet Engine
		;; WARNING: Currently Broken.
    ;;:L3MON4D3/LuaSnip

    :saadparwaiz1/cmp_luasnip

    :hrsh7th/cmp-nvim-lsp

    :rafamadriz/friendly-snippets
  ]
  :config (fn []
    (local cmp (require :cmp))
    ;;(local luasnip (require :luasnip))

    ;;((. (require :luasnip.loaders.from_vscode) :lazy_load))
    ;;(luasnip.config.setup {})

    (cmp.setup {
      ;;:snippet {
				;;:expand (fn [args]
					;;(luasnip.lsp_expand args.body))
			;;}
			:mapping (cmp.mapping.preset.insert {
					"<C-n>" (cmp.mapping.select_next_item)
					"<C-p>" (cmp.mapping.select_prev_item)
					"<C-d>" (cmp.mapping.scroll_docs (- 4))
					"<C-f>" (cmp.mapping.scroll_docs 4)
					"<C-Space>" (cmp.mapping.complete {})
					"<CR>" (cmp.mapping.confirm {
						:behavior cmp.ConfirmBehavior.Replace
						:select true
					})
					"<Tab>" (cmp.mapping (fn [fallback]
						(if (cmp.visible)
								(cmp.select_next_item)
								;;(luasnip.expand_or_locally_jumpable)
								;;(luasnip.expand_or_jump)
								(fallback))
						)
						[ :i :s ])
					"<S-Tab>" (cmp.mapping (fn [fallback]
						(if (cmp.visible)
								(cmp.select_prev_item)
								;;(luasnip.expand_or_locally_jumpable (- 1))
								;;(luasnip.jump (- 1))
								(fallback))
						)
						[ :i :s ])			
				})
				:sources {
					{ :name "nvim_lsp" }
					{ :name "luasnip" }
				}
    })
  )
})

nvim-cmp-config
