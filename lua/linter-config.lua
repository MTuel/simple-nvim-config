-- [nfnl] Compiled from linter-config.fnl by https://github.com/Olical/nfnl, do not edit.
local linter_config
local function _1_()
  local lint = require("lint")
  lint.linters_by_ft = {javascript = {"eslint_d"}, javascriptreact = {"eslint_d"}, kotlin = {"ktlint"}, ruby = {"standardrb"}, svelte = {"eslint_d"}, terraform = {"tflint"}, typescript = {"eslint_d"}, typescriptreact = {"eslint_d"}}
  local lint_augroup = vim.api.nvim_create_augroup("lint", {clear = true})
  local function _2_()
    return lint.try_lint()
  end
  vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave"}, {callback = _2_, group = lint_augroup})
  local function _3_()
    return lint.try_lint()
  end
  return vim.keymap.set("n", "<leader>ll", _3_, {desc = "Trigger linting for current file"})
end
linter_config = {"mfussenegger/nvim-lint", event = {"BufReadPre", "BufNewFile"}, config = _1_}
return linter_config
