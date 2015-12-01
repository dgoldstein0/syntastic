"============================================================================
"File:        arc.vim
"Description: Syntax checking plugin for syntastic.vim
" this was borrowed from https://raw.githubusercontent.com/rissole/syntastic-arclint/master/arc.vim.
"============================================================================
if exists("g:loaded_syntastic_generic_arc_checker")
    finish
endif
let g:loaded_syntastic_generic_arc_checker=1

function! SyntaxCheckers_generic_arc_GetLocList() dict
    let makeprg = self.makeprgBuild({
        \ 'args': 'lint --output compiler' })
    let errorformat = '%f:%l:%m'

    let errors = SyntasticMake({
            \ 'makeprg': makeprg,
            \ 'errorformat': errorformat })
    for error in errors
        let error.bufnr = bufnr('')
    endfor
    return errors
endfunction

