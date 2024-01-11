-- :fennel:1704948429
local nvim_cmp_config
local function _1_()
  local cmp = require("cmp")
  local luasnip = require("luasnip")
  require("luasnip.loaders.from_vscode").lazy_load()
  luasnip.config.setup({})
  local function _2_(args)
    return luasnip.lsp_expand(args.body)
  end
  local function _3_(fallback)
    if cmp.visible() then
      return cmp.select_next_item()
    elseif luasnip.expand_or_locally_jumpable() then
      return luasnip.expand_or_jump()
    else
      return fallback()
    end
  end
  local function _5_(fallback)
    if cmp.visible() then
      return cmp.select_prev_item()
    elseif luasnip.expand_or_locally_jumpable(( - 1)) then
      return luasnip.jump(( - 1))
    else
      return fallback()
    end
  end
  return cmp.setup({snippet = {expand = _2_}, mapping = cmp.mapping.preset.insert({["<C-n>"] = cmp.mapping.select_next_item(), ["<C-p>"] = cmp.mapping.select_prev_item(), ["<C-d>"] = cmp.mapping.scroll_docs(( - 4)), ["<C-f>"] = cmp.mapping.scroll_docs(4), ["<C-Space>"] = cmp.mapping.complete({}), ["<CR>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true}), ["<Tab>"] = cmp.mapping(_3_, {"i", "s"}), ["<S-Tab>"] = cmp.mapping(_5_, {"i", "s"})}), sources = {[{name = "nvim_lsp"}] = {name = "luasnip"}}})
end
nvim_cmp_config = {"hrsh7th/nvim-cmp", dependencies = {"L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-nvim-lsp", "rafamadriz/friendly-snippets"}, config = _1_}
return nvim_cmp_config