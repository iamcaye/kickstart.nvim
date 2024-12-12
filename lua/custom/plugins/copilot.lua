return {
  'github/copilot.vim', -- copilot
  branch = 'release',
  config = function()
    -- toggle copilot
    vim.g.copilot_enabled = false

    vim.keymap.set('n', '<leader>cp', function()
      if vim.g.copilot_enabled then
        vim.g.copilot_enabled = false
        vim.cmd 'echo "Copilot disabled"'
      else
        vim.g.copilot_enabled = true
        vim.cmd 'echo "Copilot enabled"'
      end
    end, { desc = 'Toggle [C]opilot' })
  end,
}
