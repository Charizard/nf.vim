" Create a new file in the buffer in the current directory with the passed name
" and opens it in a vertical split.
function! nf:create_file_in_current_directory(name)
  let file_full_path = expand('%:p:h') . '/' . a:name
  execute "vsplit" . file_full_path
endfunction

" Commands
command! -nargs=1 Nf call nf:create_file_in_current_directory(<f-args>)
