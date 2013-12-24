"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.
set visualbell t_vb=

noremap <ESC> <ESC>:noh<ESC>

set cursorcolumn
set cursorline
set guitablabel=%M

