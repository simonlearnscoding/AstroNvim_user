-- return {
--
--   "mfussenegger/nvim-dap-python",
--   config = function()
--     require("dap-python").setup "~/code/discord/spqr--bot/discord/bin/python"
--     local dap = require "dap"
--     dap.adapters.python = {
--       type = "executable",
--       command = "/usr/bin/python3",
--       args = { "-m", "debugpy.adapter" },
--     }
--   end,
-- }
--
--
return {
  "mfussenegger/nvim-dap-python",
  config = function()
    local util = require "dap-python.utils"
    local venv_path = util.find_virtualenv() or "venv"
    local python_path = venv_path .. "/bin/python3"

    require("dap-python").setup(python_path)

    local dap = require "dap"
    dap.adapters.python = {
      type = "executable",
      justMyMode = false,
      command = python_path,
      args = { "-m", "debugpy.adapter" },
    }
  end,
}
