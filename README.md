# vim-chef

vim-chef is a Vim plugin which detects Chef cookbook and Chef-Repo files and
sets the filetype to 'ruby.chef'. This enables other plugins like
[Syntastic](https://github.com/scrooloose/syntastic) to
work with Chef files, e.g. running
[Foodcritic](http://acrmp.github.io/foodcritic/) automatically on file save.

vim-chef also appends to Vim's 'path' to make 'gf' work on include_recipe
lines in Chef recipe files. For example, if you have these lines in your
cookbook's recipes/default.rb file:

```ruby
include_recipe 'git'
include_recipe 'git::source'
include_recipe 'current_cookbook::my_other_recipe'
```

'gf' with the cursor on the recipes above would jump to
'git/recipes/default.rb', 'git/recipes/source.rb', and
current_cookbook/recipes/my_other_recipe' respectively.


## Installation

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

```bash
cd ~/.vim/bundle
git clone git://github.com/dougireton/vim-chef.git
```
