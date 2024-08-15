# Buffer Actions

Useful buffer actions.

## Installation

### Lazy

```lua
{
  "nikhilmtomy/buf_act.nvim",
  config = function()
    local buf_act = require 'buf_act'
    vim.keymap.set('n', '<leader>bdo', buf_act.delete_others, { desc = '[D]elete [O]thers' })
    vim.keymap.set('n', '<leader>bdh', buf_act.delete_hidden, { desc = '[D]elete [H]idden' })
  end
}
```
