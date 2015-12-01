if exists('g:loaded_syntastic_coffee_arc_checker')
    finish
endif
let g:loaded_syntastic_coffee_arc_checker = 1

runtime! syntax_checkers/generic/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'coffee',
    \ 'name': 'arc',
    \ 'redirect': 'generic/arc'})

