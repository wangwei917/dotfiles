"When the GUI starts, t_vb is reset to its default value.
"Reassert that no flash or beep is wanted.

color codeschool

set guioptions-=T
set guioptions+=e
set t_Co=256
set guitablabel=%M\ %t

nmap <C-up> <C-y>
imap <C-up> <C-o><C-y>
nmap <C-down> <C-e>
imap <C-down> <C-o><C-e>

au GUIEnter * simalt ~x


