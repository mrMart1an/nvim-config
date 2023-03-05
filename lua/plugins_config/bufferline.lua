-- Load the plugin
local status, bufferline = pcall(require, "bufferline")
if not status then
  print("ERROR bufferline")
  return
end

-- Configure the plugin
bufferline.setup({
  options = {
    indicator = {
      style = 'icon',
      icon = '',
      buffer_close_icon = ' ',
      modified_icon = '●',
      close_icon = ' ',
      left_trunc_marker = '<-',
      right_trunc_marker = '->',
    },
    numbers = "none",
    max_name_length = 15,
    max_prefix_length = 6,
    diagnostics = "nvim_lsp",
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    persist_buffer_sort = true,
    enforce_regular_tabs = true,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and "" or ""
      return icon .. count
    end,

    offsets = {
      {
        filetype = "neo-tree",
        separator = false
      }
    }
  }
})

-- Define the keybinds
vim.keymap.set({'n', 'i'}, '<C-l>', ':BufferLineCycleNext<CR>')
vim.keymap.set({'n', 'i'}, '<C-h>', ':BufferLineCyclePrev<CR>')
