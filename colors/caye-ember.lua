-- ~/.config/nvim/colors/caye-ember.lua
-- Tema oscuro con acentos anaranjados
-- by ChatGPT (para Caye)

local palette = {
  bg        = "#0f1115",
  bg_alt    = "#141720",
  bg_dim    = "#0b0d12",
  fg        = "#e6e6e6",
  fg_dim    = "#c4c6cc",

  -- acentos
  orange    = "#ffa657",
  amber     = "#ffb86b",
  yellow    = "#ffd166",
  red       = "#ff6b6b",
  magenta   = "#ff7edb",
  purple    = "#c792ea",
  blue      = "#82aaff",
  cyan      = "#7fdbca",
  green     = "#a6e3a1",

  -- especiales
  comment   = "#6b7280",
  border    = "#222638",
  selection = "#1f2433",
  subtle    = "#161a24",
}

-- Helpers
local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- Fondo y texto base
hi("Normal", { fg = palette.fg, bg = palette.bg })
hi("NormalNC", { fg = palette.fg_dim, bg = palette.bg })
hi("SignColumn", { bg = palette.bg })
hi("MsgArea", { fg = palette.fg, bg = palette.bg })
hi("EndOfBuffer", { fg = palette.bg_dim })
hi("NonText", { fg = palette.bg_dim })
hi("Conceal", { fg = palette.comment })

-- UI
hi("CursorLine", { bg = palette.subtle })
hi("CursorColumn", { bg = palette.subtle })
hi("CursorLineNr", { fg = palette.orange, bold = true })
hi("LineNr", { fg = palette.comment })
hi("VertSplit", { fg = palette.border, bg = palette.bg })
hi("WinSeparator", { fg = palette.border, bg = palette.bg })
hi("StatusLine", { fg = palette.fg, bg = palette.bg_alt })
hi("StatusLineNC", { fg = palette.fg_dim, bg = palette.bg_alt })
hi("Pmenu", { fg = palette.fg, bg = palette.bg_alt })
hi("PmenuSel", { fg = palette.bg, bg = palette.orange, bold = true })
hi("PmenuSbar", { bg = palette.subtle })
hi("PmenuThumb", { bg = palette.border })
hi("Search", { fg = palette.bg, bg = palette.amber, bold = true })
hi("IncSearch", { fg = palette.bg, bg = palette.orange, bold = true })
hi("Visual", { bg = palette.selection })
hi("MatchParen", { fg = palette.amber, bold = true })
hi("Folded", { fg = palette.fg_dim, bg = palette.subtle })
hi("FoldColumn", { fg = palette.comment, bg = palette.bg })

-- Sintaxis clásica
hi("Comment", { fg = palette.comment, italic = true })
hi("Constant", { fg = palette.cyan })
hi("String", { fg = palette.green })
hi("Character", { fg = palette.green })
hi("Number", { fg = palette.yellow })
hi("Boolean", { fg = palette.yellow, bold = true })
hi("Float", { fg = palette.yellow })

hi("Identifier", { fg = palette.blue })
hi("Function", { fg = palette.orange, bold = true })

hi("Statement", { fg = palette.purple })
hi("Conditional", { fg = palette.purple })
hi("Repeat", { fg = palette.purple })
hi("Label", { fg = palette.magenta })
hi("Operator", { fg = palette.fg })
hi("Keyword", { fg = palette.orange, italic = true })
hi("Exception", { fg = palette.red })

hi("PreProc", { fg = palette.magenta })
hi("Include", { fg = palette.magenta })
hi("Define", { fg = palette.magenta })
hi("Macro", { fg = palette.magenta })
hi("PreCondit", { fg = palette.magenta })

hi("Type", { fg = palette.cyan })
hi("StorageClass", { fg = palette.cyan })
hi("Structure", { fg = palette.cyan })
hi("Typedef", { fg = palette.cyan })

hi("Special", { fg = palette.amber })
hi("SpecialChar", { fg = palette.amber })
hi("Tag", { fg = palette.blue })
hi("Delimiter", { fg = palette.fg })
hi("SpecialComment", { fg = palette.comment, italic = true })
hi("Debug", { fg = palette.red })

hi("Underlined", { underline = true })
hi("Bold", { bold = true })
hi("Italic", { italic = true })

-- Diagnósticos LSP
hi("Error", { fg = palette.red })
hi("Todo", { fg = palette.bg, bg = palette.blue, bold = true })

hi("DiagnosticError", { fg = palette.red })
hi("DiagnosticWarn", { fg = palette.amber })
hi("DiagnosticInfo", { fg = palette.blue })
hi("DiagnosticHint", { fg = palette.cyan })

hi("DiagnosticUnderlineError", { undercurl = true, sp = palette.red })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = palette.amber })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = palette.blue })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = palette.cyan })

hi("LspReferenceText", { bg = palette.subtle })
hi("LspReferenceRead", { bg = palette.subtle })
hi("LspReferenceWrite", { bg = palette.subtle })

-- Treesitter (prefijo @)
hi("@comment", { link = "Comment" })
hi("@punctuation", { fg = palette.fg })
hi("@operator", { link = "Operator" })
hi("@string", { link = "String" })
hi("@character", { link = "Character" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@float", { link = "Float" })
hi("@constant", { link = "Constant" })
hi("@constant.builtin", { fg = palette.amber })
hi("@variable", { fg = palette.fg })
hi("@variable.builtin", { fg = palette.amber })
hi("@field", { fg = palette.cyan })
hi("@property", { fg = palette.cyan })
hi("@parameter", { fg = palette.blue })
hi("@namespace", { fg = palette.purple })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = palette.cyan, italic = true })
hi("@function", { link = "Function" })
hi("@function.builtin", { fg = palette.orange, italic = true })
hi("@constructor", { fg = palette.orange })
hi("@keyword", { link = "Keyword" })
hi("@keyword.return", { fg = palette.purple, bold = true })
hi("@conditional", { link = "Conditional" })
hi("@repeat", { link = "Repeat" })
hi("@tag", { link = "Tag" })
hi("@attribute", { fg = palette.magenta, italic = true })

-- Telescope
hi("TelescopeNormal", { fg = palette.fg, bg = palette.bg_alt })
hi("TelescopeBorder", { fg = palette.border, bg = palette.bg_alt })
hi("TelescopePromptNormal", { fg = palette.fg, bg = palette.bg_alt })
hi("TelescopePromptBorder", { fg = palette.border, bg = palette.bg_alt })
hi("TelescopeSelection", { bg = palette.selection, bold = true })
hi("TelescopeMatching", { fg = palette.orange, bold = true })

-- GitSigns
hi("GitSignsAdd", { fg = palette.green })
hi("GitSignsChange", { fg = palette.amber })
hi("GitSignsDelete", { fg = palette.red })

-- Diff
hi("DiffAdd", { bg = "#0f1a14" })
hi("DiffChange", { bg = "#161923" })
hi("DiffDelete", { bg = "#1a0f12" })
hi("DiffText", { bg = "#1f2638" })

-- Float / Borders
hi("NormalFloat", { fg = palette.fg, bg = palette.bg_alt })
hi("FloatBorder", { fg = palette.border, bg = palette.bg_alt })
hi("WhichKeyFloat", { fg = palette.fg, bg = palette.bg_alt })

-- Cursor
hi("Cursor", { reverse = true })
hi("TermCursor", { reverse = true })

-- Barra de color para column guide
hi("ColorColumn", { bg = palette.subtle })

-- Terminal ANSI (opcional)
vim.g.terminal_color_0  = palette.bg_dim
vim.g.terminal_color_1  = palette.red
vim.g.terminal_color_2  = palette.green
vim.g.terminal_color_3  = palette.yellow
vim.g.terminal_color_4  = palette.blue
vim.g.terminal_color_5  = palette.purple
vim.g.terminal_color_6  = palette.cyan
vim.g.terminal_color_7  = palette.fg
vim.g.terminal_color_8  = palette.comment
vim.g.terminal_color_9  = palette.red
vim.g.terminal_color_10 = palette.green
vim.g.terminal_color_11 = palette.yellow
vim.g.terminal_color_12 = palette.blue
vim.g.terminal_color_13 = palette.purple
vim.g.terminal_color_14 = palette.cyan
vim.g.terminal_color_15 = palette.fg

-- Nombre del esquema
vim.g.colors_name       = "caye-ember"
