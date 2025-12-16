-- caye-tokyo-orange.nvim
-- Estilo tokyonight pero con naranja como color protagonista

local p = {
  bg = "#1a1b26",
  bg_dark = "#16161e",
  bg_alt = "#1f2230",
  fg = "#c8c9d4",
  fg_dim = "#9a9cab",

  light_orange = "#ffb378",
  orange = "#ff9f52",
  orange_bold = "#ff7f2a",
  yellow = "#eacb8a",
  green = "#9ece6a",
  red = "#e46876",
  magenta = "#bb9af7",
  cyan = "#7dcfff",

  comment = "#565f89",
  border = "#ff7f2a",
  selection = "#633800",
  current_line = "#363b49",
}

local function hi(g, o) vim.api.nvim_set_hl(0, g, o) end
vim.g.colors_name = "caye-ember"

-----------------------------------------------------------------------
-- EDITOR UI
-----------------------------------------------------------------------
-- hi("Normal", { fg = p.fg, bg = p.bg })
-- hi("NormalNC", { fg = p.fg_dim, bg = p.bg })
-- hi("CursorLine", { bg = p.current_line })
-- hi("LineNr", { fg = p.comment })
-- hi("CursorLineNr", { fg = p.orange_bold, bold = true })
-- hi("WinSeparator", { fg = p.border })
-- hi("Visual", { bg = p.selection })
-- hi("Search", { fg = p.bg, bg = p.orange_bold })
-- hi("IncSearch", { fg = p.bg, bg = p.orange })

hi("Pmenu", { bg = p.bg_alt })
hi("PmenuSel", { fg = p.bg, bg = p.orange })

-----------------------------------------------------------------------
-- SINTAXIS / TREESITTER (SEMÁNTICO)
-----------------------------------------------------------------------
hi("@comment", { fg = p.comment, italic = true })
hi("@string", { fg = p.yellow })
hi("@number", { fg = p.green })
hi("@boolean", { fg = p.yellow, bold = true })
hi("@constant", { fg = p.yellow })

hi("@variable", { fg = p.fg })
hi("@variable.builtin", { fg = p.orange, italic = true })

hi("@field", { fg = p.cyan })
hi("@property", { fg = p.blue })
hi("@parameter", { fg = p.fg_dim, italic = true })

hi("@type", { fg = p.light_orange })
hi("@type.builtin", { fg = p.magenta, italic = true })
hi("@class", { fg = p.magenta, bold = true })

hi("@function", { fg = p.orange_bold, bold = true })
hi("@function.builtin", { fg = p.orange, italic = true })
hi("@method", { fg = p.orange_bold })

hi("@keyword", { fg = p.orange, italic = true })
hi("@keyword.return", { fg = p.orange_bold, bold = true })
hi("@conditional", { fg = p.orange })
hi("@repeat", { fg = p.orange })

-----------------------------------------------------------------------
-- LSP
-----------------------------------------------------------------------
hi("DiagnosticError", { fg = p.red })
hi("DiagnosticWarn", { fg = p.yellow })
hi("DiagnosticInfo", { fg = p.cyan })
hi("DiagnosticHint", { fg = p.comment })

hi("DiagnosticUnderlineError", { undercurl = true, sp = p.red })

-----------------------------------------------------------------------
-- TELESCOPE
-----------------------------------------------------------------------
hi("TelescopeNormal", { fg = p.fg, bg = p.bg_dark })
hi("TelescopeBorder", { fg = p.border, bg = p.bg_dark })
hi("TelescopeSelection", { bg = p.selection, fg = p.orange })

-----------------------------------------------------------------------
-- GITSIGNS
-----------------------------------------------------------------------
hi("GitSignsAdd", { fg = p.green })
hi("GitSignsChange", { fg = p.orange })
hi("GitSignsDelete", { fg = p.red })

-----------------------------------------------------------------------
-- WHICH-KEY
-----------------------------------------------------------------------
hi("WhichKey", { fg = p.orange_bold })
hi("WhichKeyGroup", { fg = p.magenta })
hi("WhichKeySeparator", { fg = p.comment })
hi("WhichKeyDesc", { fg = p.fg })
hi("WhichKeyFloat", { fg = p.fg, bg = p.bg_dark })
hi("WhichKeyBorder", { fg = p.border, bg = p.bg_dark })

-----------------------------------------------------------------------
-- OIL.NVIM (HIGHLIGHTS REALES)
-----------------------------------------------------------------------
-- Carpeta raíz (proyecto)
hi("OilTreeRoot", { fg = p.orange_bold, bold = true })

-- Directorios
hi("OilTreeDirectory", { fg = p.magenta, bold = true })

-- Archivos
hi("OilTreeFile", { fg = p.fg })

-- Symlink
hi("OilTreeLinkTarget", { fg = p.cyan, italic = true })

-- Metadatos (suaves)
hi("OilTreePermission", { fg = p.comment })
hi("OilTreeSize", { fg = p.comment })
hi("OilTreeLastModified", { fg = p.comment })

-- Indentaciones del árbol
hi("OilTreeIndent", { fg = p.comment })

-- Diff
hi("DiffAdd", { bg = "#0f1a14" })
hi("DiffChange", { bg = "#161923" })
hi("DiffDelete", { bg = "#1a0f12" })
hi("DiffText", { bg = "#1f2638" })

-- Float / Borders
hi("NormalFloat", { fg = p.border, bg = p.bg_alt })
hi("FloatBorder", { fg = p.fg, bg = p.bg_alt })
hi("WhichKeyFloat", { fg = p.fg, bg = p.bg_alt })

-- Cursor
hi("Cursor", { reverse = true })
hi("TermCursor", { reverse = true })

-- Terminal ANSI (opcional)
vim.g.terminal_color_0  = p.bg_dim
vim.g.terminal_color_1  = p.red
vim.g.terminal_color_2  = p.green
vim.g.terminal_color_3  = p.yellow
vim.g.terminal_color_4  = p.blue
vim.g.terminal_color_5  = p.purple
vim.g.terminal_color_6  = p.cyan
vim.g.terminal_color_7  = p.fg
vim.g.terminal_color_8  = p.comment
vim.g.terminal_color_9  = p.red
vim.g.terminal_color_10 = p.green
vim.g.terminal_color_11 = p.yellow
vim.g.terminal_color_12 = p.blue
vim.g.terminal_color_13 = p.purple
vim.g.terminal_color_14 = p.cyan
vim.g.terminal_color_15 = p.fg
