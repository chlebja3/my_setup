return {
  -- Official GitHub Copilot plugin
  'github/copilot.vim',
  config = function()
    -- Optional: restrict Copilot to certain filetypes
    vim.g.copilot_filetypes = {
      ['*'] = false, -- disable by default
      python = true,
      cpp = true,
      lua = true,
    }

    -- Optional: remap accept key (disable default Tab)
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true, noremap = true })
    -- vim.api.nvim_set_keymap('n', '<C-J>', '<cmd>Copilot toggle<CR>', { noremap = true, silent = true })
  end,
}
