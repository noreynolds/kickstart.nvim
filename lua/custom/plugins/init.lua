-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'carlos-algms/agentic.nvim',
    opts = {
      provider = 'cline-acp',
      acp_providers = {
        ['cline-acp'] = {
          command = 'cline',
          args = { '--acp' },
        },
      },
    },
    keys = {
      { '<C-\\>', function() require('agentic').toggle() end, mode = { 'n', 'v', 'i' }, desc = 'Toggle Cline Chat' },
    },
  },
}
