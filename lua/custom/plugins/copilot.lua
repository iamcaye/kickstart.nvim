return {
  'github/copilot.vim', -- copilot
  branch = 'release',
  config = function()
    -- toggle copilot
    local nes = require("sidekick.nes")
    vim.g.copilot_enabled = false
    nes.disable()

    vim.keymap.set('n', '<leader>cp', function()
      if vim.g.copilot_enabled then
        vim.g.copilot_enabled = false
        nes.disable()
        vim.cmd 'echo "Copilot disabled"'
      else
        vim.g.copilot_enabled = true
        nes.enable()
        vim.cmd 'echo "Copilot enabled"'
      end
    end, { desc = 'Toggle [C]opilot' })
  end,
}
