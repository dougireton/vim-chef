" Vim syntax file
" Language:	Chef (Ruby)
" Maintainer:	Doug Ireton
" Remark: Syntax highlighting for Chef

" if exists("b:current_syntax")
"   finish
" endif

" Chef files are ruby files
" runtime! syntax/ruby.vim
unlet b:current_syntax

syntax match chefResource "^\s*\<\%(
      \apt_package\|
      \bash\|
      \cron\)\>"

highlight link chefResource Function

" let b:current_syntax = 'chef'
