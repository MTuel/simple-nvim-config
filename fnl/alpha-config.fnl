(local alpha-config {
	1 "goolord/alpha-nvim"
	:dependencies [
		:nvim-tree/nvim-web-devicons
	]
	:config (fn []
                 ((. (require :alpha) :setup) (. (require :alpha.themes.dashboard)
                                                 :config)))
})

alpha-config
