" Last Change: 2016-03-28  Monday: 01:18:26 AM
"  =====================================LINUX VERSION==========================
"  Beautify currently opened C/C++ source code using Artistic Styler console
"  Plugin By: Pinaki Sekhar Gupta
"  ============================================================================
"
"
"  =====================================================================================
"  Artistic Styler code beautifier (Style Java) (1) , (Style GNU) (2) , (Style ANSI) (3)
"  =====================================================================================

function! Astyle_1()
  if g:osdetected == "Windows"
    :silent!!cmd /c cmd /c astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c "%:p"
    " If you want to change the line endings for Windows, then use the following
    " :silent!!cmd /c cmd /c astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --lineend=windows "%:p"
    " If you want to change the line endings for Linux/MAC OSX, then use the following
    " :silent!!cmd /c cmd /c astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --lineend=linux "%:p"
    :e!
  elseif g:osdetected != "Windows"
    :silent!!astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --preserve-date "%:p"
    " If you want to change the line endings, then use the following
    " :silent!!astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --preserve-date --lineend=linux "%:p"
    :e!
  endif
endfunction

function! Astyle_2()
  if g:osdetected == "Windows"
    :silent!!cmd /c cmd /c astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c "%:p"
    " If you want to change the line endings for Windows, then use the following
    " :silent!!cmd /c cmd /c astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --lineend=windows "%:p"
    " If you want to change the line endings for Linux/MAC OSX, then use the following
    " :silent!!cmd /c cmd /c astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --lineend=linux "%:p"
    :e!
   elseif g:osdetected != "Windows"
     :silent!!astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --preserve-date "%:p"
     " If you want to change the line endings, then use the following
     " :silent!!astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --preserve-date --lineend=linux "%:p"
     :e!
  endif
endfunction

function! Astyle_3()
  if g:osdetected == "Windows"
    :silent!!cmd /c cmd /c astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c "%:p"
    " If you want to change the line endings for Windows, then use the following
    " :silent!!cmd /c cmd /c astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --lineend=windows "%:p"
    " If you want to change the line endings for Linux/MAC OSX, then use the following
    " :silent!!cmd /c cmd /c astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --lineend=linux "%:p"
    :e!
   elseif g:osdetected != "Windows"
    :silent!!astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --preserve-date "%:p"
    " If you want to change the line endings, then use the following
    " :silent!!astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --max-code-length=72 --break-after-logical --mode=c --preserve-date --lineend=linux "%:p"
    :e!
  endif
endfunction


"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if g:osdetected == "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler.bmp 1.260 ToolBar.astyle1 astyle (console) for currently opened single C/C++ code (style java)   \ft1
elseif g:osdetected != "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler.bmp 1.260 ToolBar.astyle1 astyle (console) for currently opened single C/C++ code (style java)   \ft1
endif
:menu ToolBar.astyle1 <Esc>:call Astyle_1() <CR><CR>

map <silent> <leader>ft1 <Esc>:call Astyle_1() <CR><CR>
                       " ft1 * Astyle_1 * (Style Java)
"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if g:osdetected == "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_gnu.bmp 1.265 ToolBar.astyle2 astyle (console) for currently opened single C/C++ code (style GNU)   \ft3
elseif g:osdetected != "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_gnu.bmp 1.265 ToolBar.astyle2 astyle (console) for currently opened single C/C++ code (style GNU)   \ft3
endif
:menu ToolBar.astyle2 <Esc>:call Astyle_2() <CR><CR>

map <silent> <leader>ft3 <Esc>:call Astyle_2() <CR><CR>
                       " ft3 * Astyle_2 * (Style GNU)
"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if g:osdetected == "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_ansi.bmp 1.263 ToolBar.astyle3 astyle (console) for currently opened single C/C++ code (style BSD)   \ft2
elseif g:osdetected != "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_ansi.bmp 1.263 ToolBar.astyle3 astyle (console) for currently opened single C/C++ code (style ANSI)   \ft2
endif
:menu ToolBar.astyle3 <Esc>:call Astyle_3() <CR><CR>

map <silent> <leader>ft2 <Esc>:call Astyle_3() <CR><CR>
                       " ft2 * Astyle_3 * (Style ANSI)
"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

