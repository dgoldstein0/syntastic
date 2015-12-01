if exists('g:loaded_syntastic_python_arc_checker')
    finish
endif
let g:loaded_syntastic_python_arc_checker = 1

runtime! syntax_checkers/generic/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'python',
    \ 'name': 'arc',
    \ 'redirect': 'generic/arc'})

