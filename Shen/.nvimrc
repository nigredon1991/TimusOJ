augroup vimrc_autocmds
    autocmd!
    autocmd FileType txt match Excess /\%100v.*/
    autocmd FileType ruby,python,javascript,php highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,php match Excess /\%100v.*/
    autocmd FileType ruby,python,javascript,php setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
    autocmd FileType bash,sh,hook setlocal noexpandtab shiftwidth=4 softtabstop=4
    autocmd FileType c,cpp  setlocal expandtab shiftwidth=4 softtabstop=4
    autocmd FileType md,markdown setlocal syntax=mkd filetype=markdown.pandoc shiftwidth=4 softtabstop=4
    autocmd FileType yaml setlocal shiftwidth=1 softtabstop=1
    autocmd FileType Jenkinsfile setlocal shiftwidth=4 softtabstop=4
    autocmd FileType vim setlocal shiftwidth=4 softtabstop=4

augroup END

let b:ale_linters = {
                     \'sh': ['shellcheck'],
                     \ 'python': ['pylint', 'flake8'],
                     \ 'c': ['clang'],
                     \ 'cpp': ['clang'],
                     \}
"                      \ 'python': ['pylint','pyls'],
                     "\ 'python': ['flake8'],

