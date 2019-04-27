""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim
" put this file as /etc/vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set tabstop=4
set nowrap            " don't aoto wrap the text
syntax on
set expandtab         " tab turns to space




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimgdb
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-F5> :run macros/gdb_mappings.vim<CR>
"
" How to use it
"
" 1. Press ctrl+F5
" 2. Press F7
" 3. Press Space(call GDB)
" 4. In GDB window, enter your executable file, like: file debug
" 5. Press F3(the watch window, you can use 'v' to select variable, then
"    ctrl+p to add it to watch window)
" 6. F5: run; F9: break; F10: next; F11: step




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=~/path/tags
set tags=tags;
set autochdir




"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" vundle
"
" * all plugins managed by vundle must lay between "call vundle#begin()"
"   and "call vundle#end()" !
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
set rtp+=~/.vim/bundle/Vundle.vim    " don't modify or delete this
call vundle#begin()                  " don't modify or delete this




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoDebug
" How to use:
" 1. :NeoDebug
" 2. (gdb): file <exe_file>
" 3. (gdb): break <line>
" 4. (gdb): run
" 5. <F10>, <F11>...
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'cpiger/NeoDebug'
let g:neodbg_console_height        = 15  " gdb console buffer hight, Default: 15
let g:neodbg_openbreaks_default    = 1   " Open breakpoints window, Default: 1
let g:neodbg_openstacks_default    = 0   " Open stackframes window, Default: 0
let g:neodbg_openthreads_default   = 0   " Open threads window, Default: 0
let g:neodbg_openlocals_default    = 1   " Open locals window, Default: 1
let g:neodbg_openregisters_default = 0   " Open registers window, Default: 0

let g:neodbg_keymap_toggle_breakpoint  = '<F9>'         " toggle breakpoint on current line
let g:neodbg_keymap_next               = '<F10>'        " next
let g:neodbg_keymap_run_to_cursor      = '<C-F10>'      " run to cursor (tb and c)
let g:neodbg_keymap_jump               = '<C-S-F10>'    " set next statement (tb and jump)
let g:neodbg_keymap_step_into          = '<F11>'        " step into
let g:neodbg_keymap_step_out           = '<S-F11>'      " setp out
let g:neodbg_keymap_continue           = '<F5>'         " run or continue
let g:neodbg_keymap_print_variable     = '<C-P>'        " view variable under the cursor
let g:neodbg_keymap_stop_debugging     = '<S-F5>'       " stop debugging (kill)
let g:neodbg_keymap_toggle_console_win = '<F6>'         " toggle console window
let g:neodbg_keymap_terminate_debugger = '<C-C>'        " terminate debugger




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline-themes'




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerd-tree setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'The-NERD-tree'
autocmd StdinReadPre * let s:std_in=1
map <F2> :NERDTreeToggle<CR>




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <f3> :TlistToggle<CR>
Plugin 'taglist.vim'
let Tlist_Use_Right_Window=1   " taglist is in the right side
let Tlist_Exit_OnlyWindow=1    " if taglist is the last windown, quit vim
let Tlist_WinWidth=35
let Tlist_Show_One_File=1      " don't show several files' taglist, just




call vundle#end()       " don't modify or delete this
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" vundle
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

