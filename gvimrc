"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.
set visualbell t_vb=


imap <C-S-V> <esc>"+gP<cr>i

set guifont=Monospace\ Bold\ 9
colorscheme ir_dark

noremap <ESC> <ESC>:noh<ESC>

set cursorcolumn
set cursorline
set guitablabel=%M

au GUIEnter * set lines=52 columns=160

