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
            f = { builtin.find_files, "[F]ind File" },
            r = { builtin.oldfiles, "Open [R]ecent File" },
            s = { builtin.treesitter, "Tree[S]itter" },
            t = { function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, "Search [T]he Lot" },
        },
    }, 
    { 
        prefix = "<leader>" 
    }
)