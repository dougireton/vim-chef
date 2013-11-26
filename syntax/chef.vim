" Vim syntax file
" Language:	Chef (Ruby)
" Maintainer:	Doug Ireton
" Remark: Syntax highlighting for Chef


syntax match chefBuiltinResource "^\s*\<\%(
      \apt_package\|
      \bash\|
      \batch\|
      \bff_package\|
      \breakpoint\|
      \chef_gem\|
      \cookbook_file\|
      \cron\|
      \csh\|
      \deploy\|
      \directory\|
      \dpkg_package\|
      \easy_install_package\|
      \env\|
      \erl_call\|
      \execute\|
      \file\|
      \freebsd_package\|
      \gem_package\|
      \git\|
      \group\|
      \http_request\|
      \ifconfig\|
      \ips_package\|
      \link\|
      \log\|
      \macports_package\|
      \mdadm\|
      \mount\|
      \ohai\|
      \package\|
      \pacman_package\|
      \perl\|
      \portage_package\|
      \powershell_script\|
      \python\|
      \registry_key\|
      \remote_directory\|
      \route\|
      \rpm_package\|
      \ruby\|
      \ruby_block\|
      \script\|
      \service\|
      \smart_o_s_package\|
      \solaris_package\|
      \subversion\|
      \template\|
      \user\|
      \yum_package
      \\)\>"

syntax match chefWindowsResource "^\s*\<windows_\%(
      \auto_run\|
      \batch\|
      \feature\|
      \package\|
      \path\|
      \printer_port\|
      \printer\|
      \reboot\|
      \registry\|
      \task\|
      \zipfile
      \\)\>"

highlight link chefBuiltinResource Function
highlight link chefWindowsResource Function

" Delete b:current_syntax so that when we load a Ruby file it will reload the
" Ruby syntax file
unlet b:current_syntax

" vim: nowrap sw=2 sts=2 ts=8 noet:
