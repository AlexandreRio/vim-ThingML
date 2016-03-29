" vim-thingml
" -----------
" Use the ThingML framework inside Vim.
"
" Author: Alexandre Rio <contact@alexrio.fr>
" Website: https://github.com/AlexandreRio/vim-thingml
" License: LGPL-3.0 (see LICENSE file)
" Version: 0.0.1

if !exists("g:thingml_compiler_command")
  let g:thingml_compiler_command = "compilerThingML.sh"
endif

if !exists("g:arduino_compiler_command")
  let g:arduino_compiler_command = "ard.sh -b"
endif

if !exists("g:arduino_compiler_uploader_command")
  let g:arduino_compiler_uploader_command = "ard.sh -bu"
endif

function! CompileToArduino()
  silent !clear
  execute "!" . g:thingml_compiler_command . " -c arduino -s " . bufname("%")
endfunction

function! CompileArduinoCode()
  silent !clear
  execute "!" . g:arduino_compiler_command
endfunction

function! CompileAndUploadArduinoCode()
  silent !clear
  execute "!" . g:arduino_compiler_uploader_command
endfunction

nnoremap <buffer> <F3> :call CompileToArduino()<CR>
nnoremap <buffer> <F4> :call CompileArduinoCode()<CR>
nnoremap <buffer> <F5> :call CompileAndUploadArduinoCode()<CR>
