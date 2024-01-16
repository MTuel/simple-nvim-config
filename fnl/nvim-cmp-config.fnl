(var nvim-cmp-config {
  ;; Autocompletion
  1 :hrsh7th/nvim-cmp
  :dependencies [

    :saadparwaiz1/cmp_luasnip

    :hrsh7th/cmp-nvim-lsp

    :rafamadriz/friendly-snippets
  ]
  :config (fn []
    (local cmp (require :cmp))

    (cmp.setup {
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
								(fallback))
						)
						[ :i :s ])
					"<S-Tab>" (cmp.mapping (fn [fallback]
						(if (cmp.visible)
								(cmp.select_prev_item)
								(fallback))
						)
						[ :i :s ])			
				})
				:sources [
					{ :name "nvim_lsp" }
				]
    })
  )
})

nvim-cmp-config
