local colors = {
  bg = "#31302E",
  fg = "#D4C4A8",
  black = "#2A2826",
  red = "#B5847D",
  green = "#9A9D8A",
  yellow = "#C9B99A",
  blue = "#8A959E",
  magenta = "#9B8A95",
  cyan = "#8A9E95",
  white = "#E0D4B8",
  bright_black = "#4A4540",
  bright_red = "#D49A92",
  bright_green = "#B5B9A5",
  bright_yellow = "#E4D4B8",
  bright_blue = "#A5B0BA",
  bright_magenta = "#B5A5B0",
  bright_cyan = "#A5BAA5",
  bright_white = "#F0E4C8",
  selection_bg = "#4A4540",
  comment = "#6B6560",
  line_nr = "#5A5550",
  cursor_line = "#3A3836",
  visual = "#4A4540",
  search = "#5A5040",
  diff_add = "#3A4535",
  diff_delete = "#453535",
  diff_change = "#3A4045",
  diff_text = "#4A5055",
}

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.cmd("hi clear")
vim.opt.termguicolors = true
vim.g.colors_name = "earthtone"

-- Core highlights
set_hl("Normal", { fg = colors.fg, bg = colors.bg })
set_hl("NormalFloat", { fg = colors.fg, bg = colors.black })
set_hl("NormalNC", { fg = colors.fg, bg = colors.bg })
set_hl("CursorLine", { bg = colors.cursor_line })
set_hl("CursorLineNr", { fg = colors.yellow, bg = colors.cursor_line, bold = true })
set_hl("CursorColumn", { bg = colors.cursor_line })

-- Line numbers
set_hl("LineNr", { fg = colors.line_nr, bg = colors.bg })
set_hl("LineNrAbove", { fg = colors.line_nr })
set_hl("LineNrBelow", { fg = colors.line_nr })

-- Comments
set_hl("Comment", { fg = colors.comment, italic = true })
set_hl("Todo", { fg = colors.yellow, bg = colors.bg, bold = true })

-- Strings
set_hl("String", { fg = colors.green })
set_hl("Character", { fg = colors.green })

-- Numbers
set_hl("Number", { fg = colors.yellow })
set_hl("Float", { fg = colors.yellow })
set_hl("Boolean", { fg = colors.magenta })

-- Types
set_hl("Type", { fg = colors.blue })
set_hl("Structure", { fg = colors.blue })
set_hl("StorageClass", { fg = colors.blue })
set_hl("Typedef", { fg = colors.blue })

-- Identifiers
set_hl("Identifier", { fg = colors.fg })
set_hl("Function", { fg = colors.blue, bold = true })
set_hl("Constant", { fg = colors.yellow })

-- Statements
set_hl("Statement", { fg = colors.magenta })
set_hl("Conditional", { fg = colors.magenta })
set_hl("Repeat", { fg = colors.magenta })
set_hl("Label", { fg = colors.magenta })
set_hl("Operator", { fg = colors.cyan })
set_hl("Keyword", { fg = colors.magenta })
set_hl("Exception", { fg = colors.red })

-- Preprocessor
set_hl("PreProc", { fg = colors.cyan })
set_hl("Include", { fg = colors.cyan })
set_hl("Define", { fg = colors.cyan })
set_hl("Macro", { fg = colors.cyan })
set_hl("PreCondit", { fg = colors.cyan })

-- Special
set_hl("Special", { fg = colors.cyan })
set_hl("SpecialChar", { fg = colors.cyan })
set_hl("Tag", { fg = colors.yellow })
set_hl("Delimiter", { fg = colors.fg })
set_hl("SpecialComment", { fg = colors.comment })
set_hl("Debug", { fg = colors.red })

-- Underlined
set_hl("Underlined", { underline = true })

-- Errors
set_hl("Error", { fg = colors.red, bg = colors.bg, bold = true })
set_hl("ErrorMsg", { fg = colors.red, bg = colors.bg, bold = true })
set_hl("WarningMsg", { fg = colors.yellow })

-- Visual mode
set_hl("Visual", { bg = colors.visual })
set_hl("VisualNOS", { bg = colors.visual })

-- Search
set_hl("Search", { fg = colors.bright_yellow, bg = colors.search })
set_hl("IncSearch", { fg = colors.bg, bg = colors.yellow, bold = true })

-- Match parentheses
set_hl("MatchParen", { fg = colors.yellow, bg = colors.bright_black, bold = true })

-- Status line
set_hl("StatusLine", { fg = colors.fg, bg = colors.black })
set_hl("StatusLineNC", { fg = colors.comment, bg = colors.black })

-- Tab line
set_hl("TabLine", { fg = colors.comment, bg = colors.black })
set_hl("TabLineFill", { fg = colors.comment, bg = colors.black })
set_hl("TabLineSel", { fg = colors.bg, bg = colors.yellow })
set_hl("WildMenu", { fg = colors.bg, bg = colors.yellow })

-- Diff
set_hl("DiffAdd", { bg = colors.diff_add })
set_hl("DiffChange", { bg = colors.diff_change })
set_hl("DiffDelete", { bg = colors.diff_delete })
set_hl("DiffText", { bg = colors.diff_text })

-- Sign column & Fold
set_hl("SignColumn", { bg = colors.bg })
set_hl("Folded", { fg = colors.comment, bg = colors.black })
set_hl("FoldColumn", { fg = colors.comment, bg = colors.bg })

-- Cursor
set_hl("Cursor", { fg = colors.bg, bg = colors.fg })
set_hl("CursorIM", { fg = colors.bg, bg = colors.fg })
set_hl("lCursor", { fg = colors.bg, bg = colors.fg })

-- Misc UI
set_hl("ColorColumn", { bg = colors.black })
set_hl("Conceal", { fg = colors.comment })
set_hl("Directory", { fg = colors.blue })
set_hl("EndOfBuffer", { fg = colors.bg, bg = colors.bg })
set_hl("VertSplit", { fg = colors.black, bg = colors.bg })
set_hl("ModeMsg", { fg = colors.yellow, bold = true })
set_hl("MoreMsg", { fg = colors.blue })
set_hl("NonText", { fg = colors.comment })
set_hl("Question", { fg = colors.cyan })
set_hl("QuickFixLine", { bg = colors.cursor_line })
set_hl("SpecialKey", { fg = colors.comment })
set_hl("Title", { fg = colors.yellow, bold = true })
set_hl("Whitespace", { fg = colors.comment })

-- Spell
set_hl("SpellBad", { undercurl = true, sp = colors.red })
set_hl("SpellCap", { undercurl = true, sp = colors.yellow })
set_hl("SpellLocal", { undercurl = true, sp = colors.blue })
set_hl("SpellRare", { undercurl = true, sp = colors.magenta })

-- Pmenu
set_hl("Pmenu", { fg = colors.fg, bg = colors.black })
set_hl("PmenuSel", { fg = colors.bg, bg = colors.yellow })
set_hl("PmenuSbar", { bg = colors.black })
set_hl("PmenuThumb", { bg = colors.line_nr })

-- === TREESITTER HIGHLIGHTS ===
set_hl("@variable", { fg = colors.fg })
set_hl("@variable.builtin", { fg = colors.red, italic = true })
set_hl("@variable.parameter", { fg = colors.cyan })
set_hl("@property", { fg = colors.blue })
set_hl("@constant", { fg = colors.yellow })
set_hl("@constant.builtin", { fg = colors.magenta })
set_hl("@module", { fg = colors.blue })
set_hl("@label", { fg = colors.yellow })
set_hl("@string", { fg = colors.green })
set_hl("@string.regexp", { fg = colors.cyan })
set_hl("@string.escape", { fg = colors.magenta })
set_hl("@character", { fg = colors.green })
set_hl("@number", { fg = colors.yellow })
set_hl("@boolean", { fg = colors.magenta })
set_hl("@type", { fg = colors.blue })
set_hl("@type.builtin", { fg = colors.red, italic = true })
set_hl("@attribute", { fg = colors.yellow })
set_hl("@function", { fg = colors.blue })
set_hl("@function.builtin", { fg = colors.cyan })
set_hl("@parameter", { fg = colors.cyan })
set_hl("@method", { fg = colors.blue })
set_hl("@field", { fg = colors.blue })
set_hl("@constructor", { fg = colors.yellow })
set_hl("@conditional", { fg = colors.magenta })
set_hl("@repeat", { fg = colors.magenta })
set_hl("@exception", { fg = colors.red })
set_hl("@operator", { fg = colors.cyan })
set_hl("@keyword", { fg = colors.magenta })
set_hl("@keyword.import", { fg = colors.cyan })
set_hl("@preproc", { fg = colors.cyan })
set_hl("@storageclass", { fg = colors.blue })
set_hl("@structure", { fg = colors.blue })
set_hl("@namespace", { fg = colors.blue })
set_hl("@include", { fg = colors.cyan })
set_hl("@tag", { fg = colors.yellow })
set_hl("@tag.attribute", { fg = colors.cyan })
set_hl("@tag.delimiter", { fg = colors.fg })
set_hl("@define", { fg = colors.cyan })
set_hl("@text", { fg = colors.fg })
set_hl("@text.strong", { bold = true })
set_hl("@text.emphasis", { italic = true })
set_hl("@text.underline", { underline = true })
set_hl("@text.title", { fg = colors.yellow, bold = true })
set_hl("@text.literal", { fg = colors.green })
set_hl("@text.uri", { fg = colors.cyan, underline = true })
set_hl("@text.todo", { fg = colors.yellow, bg = colors.bg, bold = true })
set_hl("@text.warning", { fg = colors.yellow })
set_hl("@text.danger", { fg = colors.red })
set_hl("@comment", { fg = colors.comment, italic = true })

-- === LSP & DIAGNOSTICS ===
set_hl("@lsp.type.function", { fg = colors.blue })
set_hl("@lsp.type.method", { fg = colors.blue })
set_hl("@lsp.type.class", { fg = colors.blue })
set_hl("@lsp.type.type", { fg = colors.blue })
set_hl("@lsp.type.keyword", { fg = colors.magenta })
set_hl("DiagnosticError", { fg = colors.red })
set_hl("DiagnosticWarn", { fg = colors.yellow })
set_hl("DiagnosticInfo", { fg = colors.blue })
set_hl("DiagnosticHint", { fg = colors.cyan })
set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })

-- === GIT SIGNS ===
set_hl("GitSignsAdd", { fg = colors.green })
set_hl("GitSignsChange", { fg = colors.yellow })
set_hl("GitSignsDelete", { fg = colors.red })

-- === TELESCOPE ===
set_hl("TelescopeNormal", { fg = colors.fg, bg = colors.black })
set_hl("TelescopeBorder", { fg = colors.black, bg = colors.black })
set_hl("TelescopeSelection", { bg = colors.cursor_line, bold = true })
set_hl("TelescopeMatching", { fg = colors.yellow, bold = true })

-- === WHICH-KEY ===
set_hl("WhichKey", { fg = colors.yellow })
set_hl("WhichKeyDesc", { fg = colors.cyan })
set_hl("WhichKeyFloat", { bg = colors.black })

-- === CMP (Autocomplete) ===
set_hl("CmpItemAbbr", { fg = colors.fg })
set_hl("CmpItemAbbrMatch", { fg = colors.yellow, bold = true })
set_hl("CmpItemKind", { fg = colors.cyan })
set_hl("CmpItemKindFunction", { fg = colors.blue })
set_hl("CmpItemKindMethod", { fg = colors.blue })
set_hl("CmpItemKindVariable", { fg = colors.fg })
set_hl("CmpItemKindClass", { fg = colors.blue })
set_hl("CmpItemKindKeyword", { fg = colors.magenta })

-- === LAZY.NVIM ===
set_hl("LazyNormal", { fg = colors.fg, bg = colors.bg })
set_hl("LazyH1", { fg = colors.bg, bg = colors.yellow, bold = true })
set_hl("LazySpecial", { fg = colors.yellow, bold = true })

-- === NEOTREE ===
set_hl("NeoTreeNormal", { fg = colors.fg, bg = colors.black })
set_hl("NeoTreeRootName", { fg = colors.yellow, bold = true })
set_hl("NeoTreeDirectoryIcon", { fg = colors.blue })
set_hl("NeoTreeGitAdded", { fg = colors.green })
set_hl("NeoTreeGitModified", { fg = colors.yellow })
set_hl("NeoTreeGitDeleted", { fg = colors.red })

-- === FLOATS & BORDERS ===
set_hl("FloatBorder", { fg = colors.black, bg = colors.black })
set_hl("FloatTitle", { fg = colors.bg, bg = colors.yellow, bold = true })
set_hl("WinSeparator", { fg = colors.bg, bg = colors.bg })
