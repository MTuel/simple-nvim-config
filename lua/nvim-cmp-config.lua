-- :fennel:1705374527
local nvim_cmp_config
local function _1_()
  local cmp = require("cmp")
  local function _2_(fallback)
    if cmp.visible() then
      return cmp.select_next_item()
    else
      return fallback()
    end
  end
  local function _4_(fallback)
    if cmp.visible() then
      return cmp.select_prev_item()
    else
      return fallback()
    end
  end
  return cmp.setup({mapping = cmp.mapping.preset.insert({["<C-n>"] = cmp.mapping.select_next_item(), ["<C-p>"] = cmp.mapping.select_prev_item(), ["<C-d>"] = cmp.mapping.scroll_docs(( - 4)), ["<C-f>"] = cmp.mapping.scroll_docs(4), ["<C-Space>"] = cmp.mapping.complete({}), ["<CR>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true}), ["<Tab>"] = cmp.mapping(_2_, {"i", "s"}), ["<S-Tab>"] = cmp.mapping(_4_, {"i", "s"})}), sources = {{name = "nvim_lsp"}}})
end
nvim_cmp_config = {"hrsh7th/nvim-cmp", dependencies = {"saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-nvim-lsp", "rafamadriz/friendly-snippets"}, config = _1_}
return nvim_cmp_config