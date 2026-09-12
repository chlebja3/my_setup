# Shortcuts

Everything this setup binds, ordered so you can be productive after the first
section and keep coming back for the rest. Each part starts with the handful of
keys you will use every day, then works down to the ones that are nice to know.

- [Start here](#start-here)
- [tmux](#tmux)
- [Neovim](#neovim)
- [Shell](#shell)
- [Finding out more](#finding-out-more)

Notation: `<prefix>` means the tmux prefix key, `<leader>` means the Neovim
leader key, which is the spacebar. `<C-x>` means Ctrl and x pressed together,
`<M-x>` means Alt and x. Keys written one after another are pressed one after
another, so `<leader>sf` is space, then s, then f.

## Start here

Twelve keys carry most of the day. Learn these first and ignore the rest of this
file until they are automatic.

| Key | Where | What it does |
| :-- | :---- | :----------- |
| `<M-Left>` `<M-Right>` `<M-Up>` `<M-Down>` | tmux | Move to the pane in that direction |
| `<prefix> -` / `<prefix> _` | tmux | Split the current pane below / to the right |
| `<C-Left>` `<C-Right>` | tmux | Previous / next window |
| `<prefix> t` | tmux | New window in the current directory |
| `<prefix> d` | tmux | Detach, leaving everything running |
| `gg` / `G` | Neovim | Jump to the first / last line of the file |
| `0` / `$` | Neovim | Jump to the start / end of the line |
| `<leader>sf` | Neovim | Find a file by name |
| `<leader>sg` | Neovim | Search the whole project for text |
| `grd` / `K` | Neovim | Go to definition / show documentation |
| `]d` / `[d` | Neovim | Next / previous error or warning |
| `<leader>` | Neovim | Wait a moment and a menu of every leader key appears |

## tmux

### The prefix

Every tmux command starts with the prefix. `<C-b>` is the prefix, and `<C-a>`
works as a second prefix if you prefer it. Press it, release it, then press the
command key.

A few keys skip the prefix entirely because they are used constantly: the Alt
arrows for panes and the Ctrl arrows for windows.

### Panes

Panes are the splits inside one window.

| Key | Action |
| :-- | :----- |
| `<M-Left>` `<M-Right>` `<M-Up>` `<M-Down>` | Move to the pane in that direction |
| `<prefix> -` | Split the current pane, new pane below |
| `<prefix> _` | Split the current pane, new pane to the right |
| `<prefix> z` | Zoom the current pane to fill the window, press again to restore |
| `<prefix> x` | Close the current pane, asks first |
| `<prefix> h` `j` `k` `l` | Move between panes, vi style, repeatable |
| `<prefix> H` `J` `K` `L` | Resize the current pane by two cells, repeatable |
| `<prefix> ;` | Jump back to the last pane you were in |
| `<prefix> q` | Show the pane numbers, type one to jump to it |

New panes open in the directory of the pane you split, so a split next to a
project keeps you in that project.

### Windows

Windows are the tabs listed in the status bar.

| Key | Action |
| :-- | :----- |
| `<C-Left>` `<C-Right>` | Previous / next window |
| `<prefix> t` | New window in the current directory |
| `<prefix> c` | New window in your home directory |
| `<prefix> 1` … `<prefix> 9` | Jump straight to that window |
| `<prefix> ,` | Rename the current window |
| `<prefix> &` | Close the current window, asks first |
| `<prefix> <Tab>` | Jump back to the last window you were in |
| `<prefix> w` | Pick a window from a list |
| `<prefix> f` | Find a window by what is running in it |

Windows are numbered from 1 and renumbered when one closes, so the numbers never
develop gaps.

### Sessions

A session is a whole set of windows. Opening a terminal attaches to a session
called `default`, creating it if it is not there yet, so your work survives
closing the terminal.

| Key | Action |
| :-- | :----- |
| `<prefix> d` | Detach; everything keeps running in the background |
| `<prefix> s` | Pick a session from a tree of sessions and windows |
| `<prefix> $` | Rename the current session |
| `<prefix> C-c` | Create a new session |
| `<prefix> C-f` | Find a session by name |

From outside tmux, `tmux ls` lists sessions and `tmux attach -t name` returns to
one.

### Copying text

The mouse is off by default, so selecting with the mouse selects in your terminal
and copies the way your terminal normally does. Copy mode is the tmux way, and it
uses vi keys here.

| Key | Action |
| :-- | :----- |
| `<prefix> [` or `<prefix> <Enter>` | Enter copy mode, then move with vi keys |
| `v` | Start the selection |
| `<C-v>` | Toggle a rectangular selection |
| `y` | Copy the selection and leave copy mode |
| `H` / `L` | Start / end of the line, inside copy mode |
| `<Escape>` | Leave copy mode |
| `<prefix> ]` | Paste |
| `<prefix> P` | Choose which of the recent copies to paste |

`<prefix> m` toggles the mouse on when you want to scroll and click panes with
it, and off again when you want your terminal's own selection back.

### Worth knowing eventually

| Key | Action |
| :-- | :----- |
| `<prefix> r` | Reload the configuration after editing it |
| `<prefix> e` | Open `tmux.conf.local` in your editor and reload on save |
| `<prefix> <Space>` | Cycle through the pane layouts |
| `<prefix> M-1` … `<prefix> M-5` | Jump to a specific layout: even horizontal, even vertical, main horizontal, main vertical, tiled |
| `<prefix> +` | Blow the current pane up into its own temporary window |
| `<prefix> !` | Break the current pane out into a window of its own |
| `<prefix> <` / `<prefix> >` | Swap this pane with the previous / next one |
| `<prefix> C-h` / `<prefix> C-l` | Previous / next window, repeatable |
| `<prefix> S-C-h` / `<prefix> S-C-l` | Move the current window left / right in the list |
| `<C-l>` | Clear the screen and the scrollback with it |
| `<prefix> ?` | List every binding |
| `<prefix> /` | Press a key and tmux tells you what it is bound to |

## Neovim

### Leader and finding keys

The leader key is the spacebar. Press `<leader>` and pause: which-key pops up a
menu of everything that starts with it, so you can browse rather than memorise.
The same works after any prefix, so `<leader>s` lists all the search commands.

`<leader>sk` searches every keymap by name, which is the fastest way to answer
"what was that key again".

### Moving around

These are Vim's own motions and are worth more than any plugin.

| Key | Action |
| :-- | :----- |
| `h` `j` `k` `l` | Left, down, up, right |
| `0` | Start of the line |
| `^` | First non-blank character of the line |
| `$` | End of the line |
| `gg` | First line of the file |
| `G` | Last line of the file |
| `42G` or `:42` | Line 42 |
| `w` / `b` | Forward / back one word |
| `e` | End of the current word |
| `{` / `}` | Previous / next blank line, so paragraph by paragraph |
| `<C-d>` / `<C-u>` | Half a screen down / up |
| `<C-f>` / `<C-b>` | A full screen forward / back |
| `H` `M` `L` | Top, middle, bottom of what is on screen |
| `zz` | Scroll so the cursor line sits in the middle |
| `%` | Jump to the matching bracket |
| `f<char>` / `F<char>` | Jump to the next / previous occurrence of a character on this line |
| `;` / `,` | Repeat that character jump forwards / backwards |
| `/text` then `<Enter>` | Search forwards; `n` and `N` step through the matches |
| `?text` | Search backwards |
| `*` / `#` | Search for the word under the cursor, forwards / backwards |
| `<Escape>` | Clear the search highlighting |
| `<C-o>` / `<C-i>` | Back / forward through the places you jumped from |
| `` `` `` | Back to where you were before the last jump |

Search ignores case unless you type a capital letter, so `/error` finds `Error`
but `/Error` does not find `error`.

### Editing

| Key | Action |
| :-- | :----- |
| `i` / `a` | Insert before / after the cursor |
| `I` / `A` | Insert at the start / end of the line |
| `o` / `O` | Open a new line below / above and start typing |
| `<Escape>` | Back to normal mode |
| `x` | Delete the character under the cursor |
| `dd` / `yy` / `p` | Delete, copy, paste a whole line |
| `dw` / `d$` / `dgg` | Delete to the end of the word / line / top of file |
| `ciw` | Change the word under the cursor |
| `ct<char>` | Change everything up to that character |
| `u` / `<C-r>` | Undo / redo |
| `.` | Repeat the last change |
| `v` / `V` / `<C-v>` | Select by character / line / block |
| `>` / `<` | Indent / unindent the selection |
| `:s/old/new/g` | Replace on this line; `:%s/old/new/g` for the whole file |

The clipboard is shared with the system, so `y` copies into it and `p` pastes
from it without any extra key. Undo history is kept on disk, so you can still
undo yesterday's edits after reopening a file.

While typing `:s` or `:%s` the result is previewed in a split as you type.

### Saving and quitting

| Key | Action |
| :-- | :----- |
| `:w` | Save |
| `:q` | Quit |
| `:wq` or `ZZ` | Save and quit |
| `:q!` | Quit and throw the changes away |
| `:qa` | Quit every window |

Saving also formats the file, see [Formatting](#formatting).

### Finding files and text

Telescope is the fuzzy finder. In its window, type to filter, `<C-n>` and `<C-p>`
or the arrows move through the results, `<Enter>` opens, `<C-x>` and `<C-v>` open
in a horizontal or vertical split, and `<Escape>` closes it.

| Key | Action |
| :-- | :----- |
| `<leader>sf` | Search files by name |
| `<leader>sg` | Search the project for text, live, as you type |
| `<leader>sw` | Search for the word under the cursor, or the selection in visual mode |
| `<leader><leader>` | Switch between the files you already have open |
| `<leader>s.` | Recently opened files |
| `<leader>/` | Fuzzy search inside the current file |
| `<leader>sd` | List every diagnostic in the project |
| `<leader>sr` | Reopen the last search where you left it |
| `<leader>sh` | Search the help |
| `<leader>sk` | Search the keymaps |
| `<leader>sc` | Search the commands |
| `<leader>s/` | Search text across the open files only |
| `<leader>ss` | Pick from every Telescope picker there is |
| `<leader>sn` | Find files in the Neovim configuration itself |

### Splits and buffers

| Key | Action |
| :-- | :----- |
| `<C-h>` / `<C-l>` | Move focus to the window on the left / right |
| `<C-k>` | Move focus to the window above |
| `<C-w>j` | Move focus to the window below |
| `:vsplit` / `:split` | Split vertically / horizontally |
| `<C-w>q` | Close the focused window |
| `<C-w>=` | Make all windows the same size |
| `]b` / `[b` | Next / previous open file |
| `:bd` | Close the current file |

New splits open to the right and below. `<C-j>` is not window navigation here
because it toggles Copilot, so the window below is reached with `<C-w>j`.

### Code navigation

These work wherever a language server is running, which here means C, C++,
Python and Lua.

| Key | Action |
| :-- | :----- |
| `K` | Show documentation for the thing under the cursor |
| `grd` | Go to the definition |
| `grr` | List everywhere it is used |
| `grn` | Rename it, everywhere, across files |
| `gra` | Offer code actions, the fixes and refactors the server suggests |
| `gri` | Go to the implementation |
| `grt` | Go to the type definition |
| `grD` | Go to the declaration, which for C and C++ is the header |
| `gO` | List the symbols in this file |
| `gW` | Search the symbols in the whole project |
| `<C-s>` | Show the signature of the function you are calling, in insert or visual mode |
| `<C-o>` | Come back from wherever a jump took you |

Holding the cursor still highlights the other occurrences of the symbol under it.

### Diagnostics

| Key | Action |
| :-- | :----- |
| `]d` / `[d` | Next / previous error or warning, with the message in a float |
| `]D` / `[D` | Last / first one in the file |
| `<leader>q` | Put every diagnostic in the file into a list you can step through |
| `<C-w>d` | Show the full message for the diagnostic under the cursor |
| `<leader>sd` | Search diagnostics across the project |
| `]q` / `[q` | Next / previous entry in the quickfix list |

### Completion and snippets

Completion appears as you type.

| Key | Action |
| :-- | :----- |
| `<C-n>` / `<C-p>` | Next / previous suggestion |
| `<C-y>` | Accept the selected suggestion |
| `<C-Space>` | Open the menu by hand |
| `<C-Space>` again | Show the documentation for the selected item |
| `<C-e>` | Dismiss the menu |
| `<C-k>` | Toggle the signature help |
| `<Tab>` / `<S-Tab>` | Move to the next / previous placeholder inside a snippet |

### Formatting

Files are formatted when you save. Python goes through `isort` then `black`,
C++ through `clang-format` using the project's own `.clang-format`, Lua through
`stylua`, and anything else through its language server. Plain C is left alone.

`<leader>f` formats now, in normal mode for the whole file or in visual mode for
the selection.

### Comments

| Key | Action |
| :-- | :----- |
| `gcc` | Comment or uncomment this line |
| `gc` then a motion | Comment a range, so `gcap` does the paragraph |
| `gc` in visual mode | Comment the selection |

### Copilot

Copilot is off when Neovim starts and only works in Python, C++ and Lua files.

| Key | Mode | Action |
| :-- | :--- | :----- |
| `<C-j>` | normal | Turn Copilot on or off, it tells you which |
| `<C-j>` | insert | Accept the suggestion in front of you |
| `<leader>cc` | normal | Open the chat window |
| `<leader>cce` | normal | Explain this code |
| `<leader>cct` | visual | Write tests for the selection |
| `<leader>ccx` | visual | Chat about the selection |

### Markdown

Markdown is drawn in the buffer as you edit it. Headings, tables, code blocks,
bullets and checkboxes are rendered in place, and the line the cursor is on drops
back to raw text so you can still edit it.

`<leader>tm` turns the rendering off and on.

### Text objects

A text object is what an operator acts on. `d` deletes, `c` changes, `y` copies,
`v` selects, and any of them combines with any object below. `i` means inside,
`a` means around, so `ci"` changes what is between the quotes and `da(` deletes
the brackets along with their contents.

| Object | Meaning |
| :----- | :------ |
| `iw` / `aw` | Word, without / with the trailing space |
| `i"` `i'` `` i` `` | Inside the quotes |
| `i(` `i[` `i{` | Inside the brackets |
| `ib` / `ab` | Inside / around the nearest bracket, whichever kind it is |
| `iq` | Inside the nearest quotes, whichever kind they are |
| `it` / `at` | An HTML or XML tag |
| `ip` / `ap` | Paragraph |
| `if` / `af` | A function call, without / with its name |
| `ia` | One argument in a list, so `cia` rewrites a single parameter |

mini.ai also adds a direction, so you can act on something you have not moved to
yet. `ii` and `aa` mean the next one, `il` and `al` mean the previous one, and
the object follows: `cii(` jumps forward to the next bracket pair and changes
inside it.

### Surrounding

mini.surround works on the characters around a selection. Note that this takes
over `s` in normal mode, so use `cl` where you would have used `s`.

| Key | Action |
| :-- | :----- |
| `sa` then a motion then a character | Surround that range, so `saiw"` puts quotes around a word |
| `sa` in visual mode | Surround the selection |
| `sd` then a character | Delete that surrounding, so `sd"` removes the quotes |
| `sr` then two characters | Replace one surrounding with another, so `sr"'` turns quotes into apostrophes |
| `sf` / `sF` | Jump to the surrounding to the right / left |
| `sh` | Highlight the surrounding for a moment |

Add `n` or `l` to work on the next or the previous one, so `sdn"` deletes the
next pair of quotes.

### Selecting by syntax

Treesitter knows the shape of the code, so you can grow a selection along it.
Start with `v` to enter visual mode; the rest work from there.

| Key | Action |
| :-- | :----- |
| `an` | Grow the selection to the enclosing node, press again to keep growing |
| `in` | Shrink back into the child node |
| `]n` / `[n` | Extend to the next / previous node |
| `]N` / `[N` | Extend to the next / previous sibling at the same level |

### The rest

| Key | Action |
| :-- | :----- |
| `[<Space>` / `]<Space>` | Add a blank line above / below without leaving normal mode |
| `]a` / `[a` | Next / previous file in the argument list |
| `]l` / `[l` | Next / previous entry in the location list |
| `]t` / `[t` | Next / previous tag |
| `gx` | Open the link or file path under the cursor in the system handler |
| `grx` | Run the code lens under the cursor |
| `<Escape><Escape>` | Leave terminal mode, back to normal mode, inside `:terminal` |
| `ma` then `` `a `` | Set mark a, then jump back to it |
| `qa` … `q` then `@a` | Record a macro into a, then replay it; `@@` repeats |
| `"ayy` then `"ap` | Copy into register a, then paste from it |
| `:Lazy` | Manage plugins |
| `:Mason` | Manage language servers and formatters |
| `:checkhealth` | Check that everything is wired up |

## Shell

- A new terminal attaches to the tmux session called `default`, creating it if it
  is missing. Nothing is lost when you close the terminal.
- `vim` runs Neovim.
- `:q` at the shell prompt exits the shell, for when Vim has taken over your
  fingers.

## Finding out more

- `<leader>` in Neovim, then wait: which-key lists what comes next.
- `<leader>sk` searches every Neovim keymap by its description.
- `:help <thing>` in Neovim, or `<leader>sh` to search the help.
- `<prefix> ?` in tmux lists every binding, and `<prefix> /` explains one key.
- `config/nvim/init.lua` is a single commented file, so searching it is the
  fastest way to see how something is wired. tmux bindings live in
  `config/tmux/tmux.conf` and your own overrides in `config/tmux/tmux.conf.local`.
