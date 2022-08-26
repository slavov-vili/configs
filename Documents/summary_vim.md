This document tries to list and quickly summarize all the features available in the vim documentation as of 03.08.2020
As well as include some useful tips and technical details

I encourage you to look up the **bolded** terms in vim help and the *italicized* ones in here for a short description.

# Features
1. How to exit: **:quit!**
* **:** = enter **Command-line-mode** and execute a command

2. **Help**
> Vim's documentation system. Uses *Tags* to navigate between help files.
* **:h (X)/:helpc** = Open/Close help window

3. Modes
> Each mode provides different functionality (movement, text selection, text insertion/replacement)
* Main modes
  + **Command-line-mode** = run an Ex/search/filter command
  + **Insert-mode**       = inserting text
  + **Normal-mode**       = *movement* and execute *actions*
  + **Replace-mode**      = replace text as you type
  + **Visual-mode**       = select text
* Fancy/special modes
  + **Ex-mode**               = like *command-line-mode*, but you can run multiple commands
  + **Operator-pending-mode** = waiting for a *motion* after entering an *operator*
  + **Select-mode**           = like *visual-mode*, but with different commands
  + **Terminal-mode**         = opens a terminal emulator
  + **Virtual-Replace-mode**  = like *replace-mode*, but on screen space, not text in file
  + **Visual-block**          = select a block of text

4. Movement
* **cursor-motions**
  + **left-right-motions** = move inside a line
  + **up-down-motions**    = move between lines
  + **word-motions**       = move between words
  + **object-motions**     = move between text objects
      - **object-select**    = select text objects
  + **various-motions**    = move between braces, methods, if/else, etc.
  + **jump-motions**
      - ":jumps"             = list all jumps

5. **Scrolling**
> Moving the edit window (part of the buffer that you see)
* **scroll-up/scroll-down**
* **scroll-horizontal**
* **scroll-cursor**          = move edit window, but cursor stays on same line
* **scroll-binding**         = bind scrolling of multiple windows


---


6. Searching (**pattern-searches**)

7. Actions (**operator**)
* **c**  = change
* **d**  = delete
* **y**  = yank into register (aka copy)
* **~**  = swap case (only if 'tildeop' is set)
* **g~** = swap case
* **gu** = make lowercase
* **gU** = make uppercase
* **!**  = filter through an external program
* **=**  = filter through 'equalprg' or C-indenting if empty
* **gq** = text formatting
* **gw** = text formatting with no cursor movement
* **g?** = ROT13 encoding
* **>**  = indent
* **<**  = unindent
* **zf** = define a fold
* **g@** = call function set with the 'operatorfunc' option

8. Customization
* **options**       = settings to customize behaviour and appearance
* **GUI** and **guioptions**
* **mouse**         = configure how the mouse behaves
* **map-arguments** = fancy mapping
* **user-commands** = creating custom commands
* **plugin**s       = a vimscript file
* **packages**      = a directory of *plugin*s

9. **Windows**
* **diff-mode**                 = show differences between files
* **splitbelow**/**splitright** = how should windows be split
* **leftabove**                 = run command and decide where window opens

10. Other cool features
* **tab-page**       = tabs with buffers (files)
* **substitute**     = search and replace
* **registers**      = store information that can be pasted, executed as commands, etc
  + Use capital letters to append to the lowercase alternatives
* **ranges**         = specify which lines a command applies to
* **recording**      = record keystrokes and replay them
* **tags**           = places where you can *jump* to (i.e. function definitions, help pages, etc.) (kinda like hyperlinks)
* **mark**s          = positions in files which you can jump to. They are not indicated in any way.
  + Lowercase ones are file-specific and uppercase are global
* **netrw**          = Vim's file browser
  + Should also work with archives
* **folds**          = show a range of lines as a single one
* **ins-completion** = autocompletion
* **:abbreviate**    = define custom abbreviations
  + Note: expanding abbreviations triggers keybinds
* **digraphs**       = Ented characters which aren't on the keyboard
* **virtualedit**    = can place cursor where no chars (ex: editing a table)
* **modeline**       = Read first/last 5 lines of file to set file-specific options
+ **session**        = store a vim state (windows, buffers, folds)

11. Tips and Tricks
* **:maps**                  = list current mappings
* **K**                      = looking stuff up
* **[i**                     = show first line which contains word under cursor
* **CTRL-A/X**               = add or subtract from number
* **count-items**            = counting stuff
* **move**                   = moving stuff
* **sub-replace-expression** = fancy substitution
* **usr_12.txt**             = clever tricks
* **eval.txt**               = vimscript help

12. Editing code
* **omni-func**           = fancy programming autocompletion
* **filetypes**           = how vim handles different filetypes
  + Vim tries to figure out the filetype based on extension or other features (like shebang)
  + Also used to load filetype plugins and figure out indentation
* **Syntax highlighting** = showing parts of the text in a different font/color
  + Vim determines the *filetype* and finds the rules for syntax highlighting in $VIMRUNTIME/syntax

13. Recovery (**recovery**)
* **swap-file** = saves changes to a file


---


# Cool stuff
* Vim arguments
  + vim -r = recover stuff from swap file
  + vim -R = start in **readonly** mode (can't write changes)
  + vim -M = start in un**modifiable** mode (can't make changes)
  + vim -  = read from stdin
  + vim -O = open a window per file
* Running external commands
  + **:r!**       = run command and read its output
  + **:w_c!**     = run command and pass lines to its input
  + **:terminal** = open terminal emulator
* Reading files
  + **gf**         = open file under the cursor (Should also work on URLs)
  + **:tab**       = run command and open window in new tab instead
  + **:argedit**   = open a bunch of files to edit from inside vim
  + **:all**       = open a window for each buffer (vim argument)
  + **:find)**     = find file in path and edit it
  + **:read**      = insert the contents of a file under the cursor (or somewhere if range is specified)
  + **updatetime** = when should the swap file be written (see **updatecount** as well)
* Iterating through files
  + **:args**                    = get a list of all vim arguments
  + **:next/previous**           = iterate through vim arguments
  + **:buffers**                 = list buffers
  + **:b(next/prev/first/last)** = iterate throught buffers
* Closing/Writing files
  + **:close**    = close current window
  + **:only**     = close all other windows
  + **wall/qall** = like **:write** and **:quit**, but for all windows
  + **:write >>** = append the contents of the current file to another one
  + **:saveas**   = save the contents of the current file into a different file
  + **:file**     = print the contents of the current file, the cursor position and more
* Searching
  + **ignorecase/smartcase** = configure case sensitivity (**\C** to enforce case)
  + **search-offset**        = search and place cursor at offset (/pattern/<offset>)
* Substitution
  + **%**                 = apply to whole file
  + **range**             = apply to part of file
  + 'g' flag              = apply to all ocurrences (not just the first one)
  + **pattern-delimiter** = which character separates the patterns
  + **global**            = apply command to all lines which match a pattern
* Movement
  + **f**  = move to character
  + **%**  = move to matching entity (parenthesis, if/else/endif, etc.)
    - See **matchpairs**
  + **gD** = go to the first line in this file where the word under the cursor is found
  + **`"** = go to the place where you were when you left the file
  + **`.** = go to the place of the last change
* Commandline (:, /, ?)
  + **cmdline-completion** = autocompletion for commands
  + **wildmode**           = configure autocompletion
  + **suffixes**           = configure filename completion
  + **index**              = list all commands
  + **:hide**              = hide current buffer and execute command
  + Keybinds
    - **q:**         = open command line window (fancier way to edit and run commands)
    - **CTRL-C/Esc** = cancel
    - **Tab/CTRL-P** = autocomplete
    - **CTRL-L**     = complete prefix
    - **CTRL-D**     = overview of suggestions
    - **Up/Down**    = See history
    - **CTRL-U**     = remove all text
    - **CTRL-W**     = delete word
* GUI
  + **:gui**     = switch to the gui
  + **:browse**  = open a file selection dialog
  + **:confirm** = open a confirmation dialog
  + **:menu**    = define new menu option
* Formatting lines
  + **fileformat**         = decide on which <NL> to use
  + **fo-table**           = formatting options
  + **:left/center/right** = format range
  + **==**                 = fix indentation
* Undo tree
  + **:earlier/later** = go to prev/next state of file
  + **:undolist**      = show tree leaves
* Saving file state
  + **backup**           = tell vim to create backups of files when writing
  + **patchmode**        = create copy of the original file when writing
  + **directory**        = directories where to search for swap files
  + **shada-file**       = stores cmd/search history, marks, tags, etc. on exit
    - **:rshada/wshada** = store shada file in specific file (! to overwrite existing)
    - Writing the shada stores cursor positions in '0...'9
  + **view-file**        = a bunch of settions which apply to one window
  + **session-file**     = a collection of views
* **quickfix** = tries to speed up the edit-compile-edit cycle
  + **:make**  = run compiler or other program

