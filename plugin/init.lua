local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end


local en = [[`1234567890-=qwertyuiop[]asdfghjkl;'\zxcvbnm,./]]
local bepo = [[$"23()@+-/*=%bépoè^vdljzwauie,ctsrnmçàyx.k'qghf]]
local en_shift = [[~!@#$%^&*()_+QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>?]]
local bepo_shift = [[#1234567890°`BÉPOÈ!VDLJZWAUIE;CTSRNMÇÀYX:K?QGHF]]

vim.opt.langmap = vim.fn.join({
    -- | `to` should be first     | `from` should be second
    escape(bepo_shift) .. ';' .. escape(en_shift),
    escape(bepo) .. ';' .. escape(en),
}, ',')

require("langmapper").setup({
  map_all_ctrl = true,
  hack_keymap = true,
  default_layout = en .. en_shift,
  use_layouts = { "bepo" },
  layouts = {
    bepo = {
      id = "bepo",
      layout = bepo .. bepo_shift,
    }
  }
})

local map = vim.api.nvim_set_keymap
local noremap = { noremap = true }

-- « et » sont super buggés si utilisés dans le langmap
-- puisqu'ils ne posent pas de soucis pour les racourcis
-- doublés, je les définis ici
map("i", "«", "<", noremap)
map("i", "»", ">", noremap)
map("i", "<", "«", noremap)
map("i", ">", "»", noremap)
map("c", "«", "<", noremap)
map("c", "»", ">", noremap)
map("c", "<", "«", noremap)
map("c", ">", "»", noremap)

map("n", "«", "2", noremap)
map("n", "»", "3", noremap)
