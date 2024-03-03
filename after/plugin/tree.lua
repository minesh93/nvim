require('nvim-tree').setup()

local wk = require('which-key')

wk.register(
    {
        e = {
            name = "[e]xplorer",
            t = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
        },
    }, 
    { 
        prefix = "<leader>" 
    }
)

