=========================
|| NeoVim Cheat Sheet  ||
=========================

----------------
| Navigation   |
----------------

  * by Line

    k,j,l,h         up, down, right, left
    0, $            start, end of line
    ^, g_           first, last non-whitespace char
    +, -            next, previous line start (non ws)
    <num>|          move to column <num>

  * by Word

    e, E            end of word/WORD
    b, B            start of word/WORD
    w, W            next word/WORD
    *, #            next/prev occurrence of word under cursor

  * screen

    H, M, L         top, middle, bottom of screen
    C-f, C-b        page-down, page-up
    C-d, C-u        half page-down, up
    gg, G           top, bottom of file
    <num>gg, <num>G jump to line <num>
    :<num>          same
    C-e, C-y        scroll screen down, up by one
    z<RET>, z., z-  current line: top/mid/bottom of screen

  * special

    %               jump between matching (), {}, []

----------

| Editing      |
----------

  * insert

    i, I            insert before cursor/start of line
    a, A            insert after cursor/end of line
    o, O            open new line below/above

  * change

    c, cw, ciw      change (to end of), (word), (inner word)
    r, R            replace char, enter replace mode

  * copy/paste

    y, yy, Y        yank, yank line
    p, P            paste after, before
    d, dd           delete, delete line
    d<motion>       delete with motion
    "+y, "+p        yank/paste with system clipboard (nvim!)
    :reg            list registers

  * undo/redo

    u, U            undo, undo all on line
    C-r             redo

  * delete

    x, X            delete char under, before cursor
    D               delete to end of line

  * indent

    >, <            indent, de-indent
    =               auto-indent selection
    gg=G            auto-indent whole file

  * repeat

    .               repeat last command
    ~, g~<motion>   toggle case
    C-a, C-x        increment/decrement number

----------------
| Markers      |
----------------

    m<a-z>          set mark
    '<a-z>          jump to mark

----------------
| Search & Replace |
----------------

    /pattern        search
    n, N            next, previous match
    :%s/pat/rep/g   replace all in file
    :'<,'>s///g     replace in selection
    :noh            clear highlight

----------------
| File / Buffer |
----------------

    :w              write
    :q              quit
    :wq, :x, ZZ     save & quit
    :e <file>       edit file
    :bnext, :bprev  next/prev buffer
    :ls             list buffers
    :bd             delete buffer

-----------------
| Tabs & Splits  |
-----------------

  * splits

    :sp, :vsp       horizontal, vertical split
    C-w w           cycle windows
    C-w h/j/k/l     move to split
    C-w +/-, </>    resize split

  * tabs

    :tabnew         new tab
    gt, gT          next/prev tab
    <num>gt         go to tab <num>

-------------------
| Macros & More    |
-------------------

    q<a-z>          start recording macro
    q               stop
    @<a-z>          run macro
    @@              repeat last macro

---------------------
| Spell Check       |
---------------------

    :set spell      enable
    ]s, [s          next, prev misspelled
    z=              suggestions
    zg, zw          add/remove word

-----------------
| LSP & Plugins  |
-----------------

    (with built-in or plugins like nvim-lspconfig, telescope.nvim, etc)

    gd              goto definition
    gr              references
    gi              implementation
    K               hover docs
    <leader>rn      rename (see plugin map)
    <leader>ca      code actions

    :Mason          install LSPs/DAPs
    :Telescope      fuzzy finder (files, grep, help, marks, etc)
    :NvimTreeToggle file tree (plugin: nvim-tree)
    <leader>ff      find files (telescope)
    <leader>fg      live grep

-----------------
| Git (plugins) |
-----------------

    :G              fugitive.vim main menu
    :Gdiffsplit     view diff
    :Git            lazygit (if mapped)
    <leader>gs      git status (with plugins)

------------------
| Custom / Useful |
------------------

    :checkhealth    diagnostics for nvim/plugins
    :PackerSync     (or :Lazy sync) update plugins
    :messages       view messages

--------------------------
| Visual Mode Shortcuts  |
--------------------------

    v, V, C-v       char, line, block selection
    y, d, c         yank, delete, change selection
    >, <, =         indent
    :norm           run normal commands on selection

--------------------------
| Quickfix/Loclist      |
--------------------------

    :copen, :cclose open/close quickfix
    :lnext, :lprev  loclist nav

--------------------------
| Some Lua Config Snips |
--------------------------

    -- Set leader key
    vim.g.mapleader = " "
    -- Example keymap
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')

-----------------------
| More resources      |
-----------------------

    :h <topic>           open help for topic
    :Tutor               vimtutor, also in nvim!
    github.com/folke/lazy.nvim        (plugin manager)
    github.com/nvim-telescope/telescope.nvim (fuzzy finder)
    github.com/neovim/nvim-lspconfig  (LSP support)
    github.com/ibhagwan/fzf-lua        (alt fuzzy finder)

------------------------

