return
-- Plugin for previewing markdown files.
-- https://github.com/davidgranstrom/nvim-markdown-preview
{
  'davidgranstrom/nvim-markdown-preview',
  --event = 'VeryLazy'
  ft = {'md', 'markdown'},
  config = function()
    --require('nvim-markdown-preview').setup()
    -- Easy activation of Markdown Preview
    vim.keymap.set('n', '<leader>mp', ':MarkdownPreview<cr>', { desc = '[M]arkdown [P]review'})
  end
}
