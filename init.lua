if vim.g.vscode then
    -- VSCode extension
    -- Do nothing for now.
else
-- pick your plugin manager
local function bootstrap(url)
    local name = url:gsub(".*/", "")
    local path = vim.fn.stdpath("data") .. "/lazy/" .. name
    vim.opt.rtp:prepend(path)

    if vim.fn.isdirectory(path) == 0 then
        print(name .. ": installing in data dir...")

        vim.fn.system {"git", "clone", url, path}

        vim.cmd "redraw"
        print(name .. ": finished installing")
    end
end

-- Stable Version
bootstrap("https://github.com/udayvir-singh/tangerine.nvim")

require "tangerine".setup {
  compiler = {
    verbose = true,
    hooks = { "onsave", "oninit" }
  }
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
end
