-- Renders markdown inside the buffer while you edit: headings, code blocks,
-- tables, bullets, checkboxes and links. The line under the cursor is shown as
-- raw text so it stays editable.
--
-- NERD FONT: the icons below are plain characters so they render in any
-- terminal. If you install a Nerd Font, set `vim.g.have_nerd_font = true` in
-- init.lua and delete the whole `opts` table to get the nicer default glyphs.
return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  ft = { 'markdown' },
  keys = {
    { '<leader>tm', '<cmd>RenderMarkdown toggle<cr>', desc = '[T]oggle [m]arkdown render' },
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    heading = {
      -- Plain '#' markers instead of the default Nerd Font glyphs.
      icons = { '# ', '## ', '### ', '#### ', '##### ', '###### ' },
      -- The sign column icon is a Nerd Font glyph, so leave it off.
      sign = false,
      width = 'block',
      min_width = 60,
    },
    code = {
      border = 'thin',
      width = 'block',
      min_width = 60,
      -- Language icons come from a devicons font, the name alone is enough.
      language_icon = false,
      sign = false,
    },
    -- No LaTeX in these notes, and enabling it wants a latex parser plus the
    -- utftex or latex2text binary.
    latex = { enabled = false },
    bullet = {
      icons = { '•', '◦', '▪', '▫' },
    },
    checkbox = {
      unchecked = { icon = '[ ] ' },
      checked = { icon = '[x] ' },
      custom = {
        todo = { raw = '[-]', rendered = '[~] ', highlight = 'RenderMarkdownTodo' },
      },
    },
  },
}
