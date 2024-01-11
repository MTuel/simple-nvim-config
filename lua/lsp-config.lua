-- :fennel:1704940819
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
local neodev = require("neodev")
return neodev.setup()