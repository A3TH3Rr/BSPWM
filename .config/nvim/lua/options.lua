
-- ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
--██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║
--╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║
-- ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
                                                        
local options = {
    -- If true, Neovim will create a backup before overwriting a file
    backup = false,
    -- Use the + register (which is the system clipboard) for all yank, delete, change and put operations which would normally go to the unnamed register
    clipboard = "unnamedplus",
    -- The height of the command-line in screen lines
    cmdheight = 1,
    -- Controls the behavior of the popup menu for Insert mode completion
    completeopt = { "menuone", "noselect" },
    -- Determines when text in the buffer is replaced with the 'conceal' character
    conceallevel = 0,
    -- The encoding that is used when writing the file to disk
    fileencoding = "utf-8",
    -- Highlight all matches of the last search pattern
    hlsearch = true,
    -- Ignore case in search patterns
    ignorecase = true,
    -- Enable the use of the mouse
    mouse = "a",
    -- Maximum number of items to show in the popup menu
    pumheight = 10,
    -- If true, show the current mode in the last line of the screen
    showmode = true,
    -- Override the 'ignorecase' option if the search pattern contains upper case characters
    smartcase = true,
    -- Automatically insert extra level of indentation in some cases
    smartindent = true,
    -- When opening a new window, it will be placed below the current one
    splitbelow = true,
    -- When opening a new window, it will be placed to the right of the current one
    splitright = true,
    -- If false, no swap file will be used
    swapfile = false,
    -- Time in milliseconds to wait for a mapped sequence to complete
    timeoutlen = 1000,
    -- If true, undofiles will be used to store undo history
    undofile = true,
    -- Time in milliseconds before the swap file is written to disk
    updatetime = 300,
    -- If true, a backup is made before overwriting a file
    writebackup = false,
    -- If true, spaces are used instead of tabs
    expandtab = true,
    -- Number of spaces used for each step of (auto)indent
    shiftwidth = 2,
    -- Number of spaces that a <Tab> in the file counts for
    tabstop = 2,
    -- If true, line numbers are shown in the window
    number = true,
    -- If true, line numbers are shown relative to the cursor
    relativenumber = true,
    -- Minimum width to use to display the line number
    numberwidth = 4,
    -- If false, long lines will not wrap and will require horizontal scrolling to see
    wrap = false,
    -- Number of lines to keep above and below the cursor
    scrolloff = 8,
    -- Number of columns to keep to the left and right of the cursor
    sidescrolloff = 8,
    -- Specifies the font(s) to be used for the GUI
    guifont = "monospace:h17",
}

-- Append 'c' to 'shortmess' option (avoid showing ins-completion-menu messages)
vim.opt.shortmess:append "c"

-- Apply the options
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Allow wrapping at the start and end of insert mode lines, and after manually inserted line breaks
vim.cmd "set whichwrap+=<,>,[,],h,l"

-- Add '-' to the list of keyword characters
vim.cmd [[set iskeyword+=-]]

-- Remove 'c', 'r' and 'o' from 'formatoptions' (disable automatic comment insertion)
vim.cmd [[set formatoptions-=cro]]


