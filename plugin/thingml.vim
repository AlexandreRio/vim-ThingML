" vim-thingml
" -----------
" Use the ThingML framework inside Vim.
"
" Author: Alexandre Rio <contact@alexrio.fr>
" Website: https://github.com/AlexandreRio/vim-thingml
" License: LGPL-3.0 (see LICENSE file)
" Version: 0.0.1

filetype plugin on
syntax on

au BufRead,BufNewFile *.thingml set ft=thingml
