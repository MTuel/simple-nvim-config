-- [nfnl] Compiled from alpha-config.fnl by https://github.com/Olical/nfnl, do not edit.
local alpha_config
local function _1_()
  return (require("alpha")).setup((require("alpha.themes.dashboard")).config)
end
alpha_config = {"goolord/alpha-nvim", dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_}
return alpha_config
