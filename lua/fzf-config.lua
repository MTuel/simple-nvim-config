-- [nfnl] Compiled from fzf-config.fnl by https://github.com/Olical/nfnl, do not edit.
local fzf_config
local function _1_()
  return (vim.fn.executable("make") == 1)
end
fzf_config = {"nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = _1_}
return fzf_config
