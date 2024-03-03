local wk = require('which-key')
local builtin = require('telescope.builtin')

require('telescope').setup {
    defaults = {
        file_ignore_patterns = { "node_modules" }
    }
}


wk.register(
    {
        p = {
            name = "telesco[p]e",
            f = { "<cmd>Telescope find_files<cr>", "Find File" },
            r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        },
    }, 
    { 
        prefix = "<leader>" 
    }
)

