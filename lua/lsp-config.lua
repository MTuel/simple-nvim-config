-- :fennel:1705209601
local function on_attach(_, bufnr)
  local function nmap(keys, func, desc)
    if desc() then
      desc(("LSP: " .. desc))
    else
    end
    vim.keymap.set({"n", keys, func, {buffer = bufnr, desc = desc}})
    nmap({"<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame"})
    nmap({"<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction"})
    return nmap({"<leader>gd", vim.lsp.buf.definition, "[G]oto [D]efinition"})
  end
  return nmap
end
local servers = {lua_ls = {Lua = {workspace = {checkThirdParty = false}, telemetry = {enable = false}}}, fennel_language_server = {}}
local neodev = require("neodev")
neodev.setup()
local capabilities = vim.lsp.protocol.make_client_capabilities
local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({ensure_installed = vim.tbl_keys(servers)})
local function _2_(server_name)
  return require("lspconfig")[server_name].setup({capabilities = capabilities(), on_attach = on_attach(), settings = servers[server_name], filetypes = (servers[server_name] or {}).filetypes})
end
return mason_lspconfig.setup_handlers({_2_})