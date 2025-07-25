-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  {                     -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').register {
        { "", group = "[T]oggle" },
        { "", group = "Git [H]unk" },
        { "", desc = "<leader>d_" },
        { "", desc = "<leader>h_" },
        { "", desc = "<leader>r_" },
        { "", group = "[R]ename" },
        { "", group = "[S]earch" },
        { "", group = "[D]ocument" },
        { "", group = "[C]ode" },
        { "", desc = "<leader>t_" },
        { "", desc = "<leader>c_" },
        { "", group = "[W]orkspace" },
        { "", desc = "<leader>w_" },
        { "", desc = "<leader>s_" },
      }
      -- visual mode
      require('which-key').register {
        { "<leader>h", desc = "Git [H]unk", mode = "v" },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
