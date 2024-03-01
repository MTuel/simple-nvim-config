-- [nfnl] Compiled from telescope-config.fnl by https://github.com/Olical/nfnl, do not edit.
local telescope_config
local function _1_()
  do end (require("telescope")).setup({defaults = {mappings = {i = {["<C-u>"] = false, ["<C-d>"] = false}}}})
  pcall((require("telescope")).load_extension, "fzf")
  vim.keymap.set("n", "<leader>?", (require("telescope.builtin")).oldfiles, {desc = "[?] Find recently opened files"})
  vim.keymap.set("n", "<leader><space>", (require("telescope.builtin")).buffers, {desc = "[ ] Find existing buffers"})
  local function _2_()
    return (require("telescope.builtin")).current_buffer_fuzzy_find((require("telescope.themes"))[{desc = "[/] Fuzzily search in current buffer"}](vim.keymap.set("n", "<leader>gf", (require("telescope.builtin")).git_files, {desc = "Search [G]it [F]iles"}), vim.keymap.set("n", "<leader>sf", (require("telescope.builtin")).find_files, {desc = "[S]earch [F]iles"}), vim.keymap.set("n", "<leader>sh", (require("telescope.builtin")).help_tags, {desc = "[S]earch [H]elp"}), vim.keymap.set("n", "<leader>sw", (require("telescope.builtin")).grep_string, {desc = "[S]earch current [W]ord"}), vim.keymap.set("n", "<leader>sg", (require("telescope.builtin")).live_grep, {desc = "[S]earch by [G]rep"}), vim.keymap.set("n", "<leader>sd", (require("telescope.builtin")).diagnostics, {desc = "[S]earch [D]iagnostics"}), vim.keymap.set("n", "<leader>sb", (require("telescope.builtin")).buffers, {desc = "[S]earch [B]uffers"})))
  end
  return vim.keymap.set("n", "<leader>/", _2_)
end
telescope_config = {"nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = {"nvim-lua/plenary.nvim"}, config = _1_}
return telescope_config
