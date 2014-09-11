" ftdetect/chef
" Copyright 2013 Doug Ireton

" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at

"     http://www.apache.org/licenses/LICENSE-2.0

" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.
"set filetype to ruby.chef only if rb/erb file is in site-cookbooks/cookbooks folder
"this will work also if you try to edit file from any place even from cookbook folder
autocmd BufNewFile,BufRead * if expand('%:p') =~'**/chef.*/.*cookbooks/.*/\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/.*.rb'| set filetype=ruby.chef | endif
autocmd BufNewFile,BufRead * if expand('%:p') =~'**/chef.*/.*cookbooks/.*/templates/*/*.erb'| set filetype=eruby.chef | endif
autocmd BufNewFile,BufRead * if expand('%:p') =~'**/chef.*/.*cookbooks/.*/metadata.rb'| set filetype=ruby.chef | endif
autocmd BufNewFile,BufRead if expand('%:p') =~'**/chef.*/environments/*.rb'| set filetype=ruby.chef | endif
autocmd BufNewFile,BufRead if expand('%:p') =~'**/chef.*/roles/*.rb'| set filetype=ruby.chef | endif
