return {
  'nvim-orgmode/orgmode',
  dependencies = {
    {'nvim-treesitter/nvim-treesitter', lazy = true},
  },
  event = 'VeryLazy',
  config = function()
require('orgmode').setup({
  org_agenda_files = {'~/org/*'},
  org_default_notes_file = '~/org/refile.org',
  org_todo_keywords = {'TODO', 'IN-PROGRESS', '|', 'DONE'},
  org_capture_templates = {
    t = {
      description = 'Todo',
      template = '* TODO %?\n  %u\n  %a',
      target = '~/org/refile.org'
    },
    n = {
      description = 'Note',
      template = '* %?\n  %u\n  %a',
      target = '~/org/notes.org'
    },
        m = {
        description = 'Meeting',
        template = '* Meeting: %^{Meeting Title}\n  %u\n  %a\n  ** Attendees: %^{Attendees}\n  ** Agenda: %^{Agenda}\n  ** Notes:\n- %? Action Items:\n  - [ ] ',
        target = '~/org/meetings.org'
  }},
})
  end,
}
