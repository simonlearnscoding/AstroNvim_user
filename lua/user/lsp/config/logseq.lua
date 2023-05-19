return {
  plugins = {
    {
      "jay-babu/mason-nvim-dap.nvim",
      opts = {
        handlers = {
          python = function(source_name)
            local dap = require "dap"
            dap.adapters.python = {
              type = "executable",
              command = "/usr/bin/python3.10",
              args = {
                "-m",
                "debugpy.adapter",
              },
            }

            dap.configurations.python = {
              {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "/home/simone/code/discord/spqr--bot/Restart/main.py", -- This configuration will launch the current file if used.
              },
            }
          end,
        },
      },
    },
  },
}
