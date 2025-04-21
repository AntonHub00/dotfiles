return {
  'stevearc/overseer.nvim',
  config = function()
    local overseer = require("overseer")
    overseer.setup()

    vim.api.nvim_create_user_command("OverseerRestartLast", function()
      local tasks = overseer.list_tasks({ recent_first = true })
      if vim.tbl_isempty(tasks) then
        vim.notify("No tasks found", vim.log.levels.WARN)
      else
        overseer.run_action(tasks[1], "restart")
      end
    end, {})

    vim.keymap.set('n', '<leader>or', ':OverseerRun<cr>', { desc = '[o]verseer [r]un' })
    vim.keymap.set('n', '<leader>ot', ':OverseerToggle<cr>', { desc = '[o]verseer [t]oggle' })
    vim.keymap.set('n', '<leader>oR', ':OverseerRestartLast<cr>', { desc = '[o]verseer [R]restart last' })
  end
}
