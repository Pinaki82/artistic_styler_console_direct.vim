" Last Change: 2016-03-28  Monday: 01:18:26 AM
"  =====================================LINUX VERSION==========================
"  Beautify currently opened C/C++ source code using Artistic Styler console
"  Plugin By: Pinaki Sekhar Gupta
"  ============================================================================
"

function! GetCursorPosition()
  let l:line = line('.')
  let l:col = col('.')
  return [l:line, l:col]
endfunction

function! RestoreCursorPosition(pos)
  let [l:line, l:col] = a:pos
  call cursor(l:line, l:col)
endfunction

" let l:pos = GetCursorPosition()
" :e! <bname>
" call RestoreCursorPosition(l:pos)

"  =====================================================================================
"
"
"  =====================================================================================
"  Artistic Styler code beautifier (Style Java) (1) , (Style GNU) (2) , (Style ANSI) (3)
"  =====================================================================================

" http://vi.stackexchange.com/questions/2572/detect-os-in-vimscript
" google: detecting os from vimscript
if !exists("g:osdetected")
    if has("win64") || has("win32") || has("win16")
        let g:osdetected = "Windows"
    else
        let g:osdetected = substitute(system('uname'), '\n', '', '')
    endif
endif

function! Astyle_1()
  :let view = winsaveview()
  :let l:pos = GetCursorPosition()
  if g:osdetected == "Windows"
    :silent!!cmd /c cmd /c astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c "%:p"
    " If you want to change the line endings for Windows, then use the following
    " :silent!!cmd /c cmd /c astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --lineend=windows "%:p"
    " If you want to change the line endings for Linux/MAC OSX, then use the following
    " :silent!!cmd /c cmd /c astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --lineend=linux "%:p"
    execute 'edit!'
  elseif g:osdetected != "Windows"
    :silent!!astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --preserve-date "%:p"
    " If you want to change the line endings, then use the following
    " :silent!!astyle --style=java --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --preserve-date --lineend=linux "%:p"
    execute 'edit!'
  endif
  :call winrestview(view)
  :call RestoreCursorPosition(l:pos)
  :execute 'normal! \<ESC>\<ESC>'
endfunction

function! Astyle_2()
  :let view = winsaveview()
  :let l:pos = GetCursorPosition()
  if g:osdetected == "Windows"
    :silent!!cmd /c cmd /c astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c "%:p"
    " If you want to change the line endings for Windows, then use the following
    " :silent!!cmd /c cmd /c astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --lineend=windows "%:p"
    " If you want to change the line endings for Linux/MAC OSX, then use the following
    " :silent!!cmd /c cmd /c astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --lineend=linux "%:p"
    execute 'edit!'
   elseif g:osdetected != "Windows"
     :silent!!astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --preserve-date "%:p"
     " If you want to change the line endings, then use the following
     " :silent!!astyle --style=gnu --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --preserve-date --lineend=linux "%:p"
     execute 'edit!'
  endif
  :call winrestview(view)
  :call RestoreCursorPosition(l:pos)
  :execute 'normal! \<ESC>\<ESC>'
endfunction

function! Astyle_3()
  :let view = winsaveview()
  :let l:pos = GetCursorPosition()
  if g:osdetected == "Windows"
    :silent!!cmd /c cmd /c astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c "%:p"
    " If you want to change the line endings for Windows, then use the following
    " :silent!!cmd /c cmd /c astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --lineend=windows "%:p"
    " If you want to change the line endings for Linux/MAC OSX, then use the following
    " :silent!!cmd /c cmd /c astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --lineend=linux "%:p"
    execute 'edit!'
   elseif g:osdetected != "Windows"
    :silent!!astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --preserve-date "%:p"
    " If you want to change the line endings, then use the following
    " :silent!!astyle --style=bsd --indent=spaces=2 --attach-namespaces --attach-classes --attach-inlines --attach-extern-c --attach-closing-while --indent-classes --indent-modifiers --indent-switches --indent-cases --indent-namespaces --indent-continuation=4 --indent-labels --indent-preproc-block --indent-preproc-define --indent-col1-comments --min-conditional-indent=1 --max-continuation-indent=70 --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --align-pointer=name --align-reference=name --break-closing-braces --break-one-line-headers --add-braces --attach-return-type --attach-return-type-decl --keep-one-line-statements --convert-tabs --remove-comment-prefix --mode=c --preserve-date --lineend=linux "%:p"
    execute 'edit!'
  endif
  :call winrestview(view)
  :call RestoreCursorPosition(l:pos)
  :execute 'normal! \<ESC>\<ESC>'
endfunction

function! FormatAndSave()
  :w
  :call Astyle_1()
endfunction

"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if g:osdetected == "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler.bmp 1.260 ToolBar.astyle1 astyle (console) for currently opened single C/C++ code (style java)   \ft1
elseif g:osdetected != "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler.bmp 1.260 ToolBar.astyle1 astyle (console) for currently opened single C/C++ code (style java)   \ft1
endif
:menu ToolBar.astyle1 <Esc>:call Astyle_1() :call winrestview(view) <CR><CR>

map <silent> <leader>ft1 <Esc>:call Astyle_1() :call winrestview(view) <CR><CR>
                       " ft1 * Astyle_1 * (Style Java)
"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if g:osdetected == "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_gnu.bmp 1.265 ToolBar.astyle2 astyle (console) for currently opened single C/C++ code (style GNU)   \ft3
elseif g:osdetected != "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_gnu.bmp 1.265 ToolBar.astyle2 astyle (console) for currently opened single C/C++ code (style GNU)   \ft3
endif
:menu ToolBar.astyle2 <Esc>:call Astyle_2() :call winrestview(view) <CR><CR>

map <silent> <leader>ft3 <Esc>:call Astyle_2() :call winrestview(view) <CR><CR>
                       " ft3 * Astyle_2 * (Style GNU)
"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if g:osdetected == "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_ansi.bmp 1.263 ToolBar.astyle3 astyle (console) for currently opened single C/C++ code (style BSD)   \ft2
elseif g:osdetected != "Windows"
  :tmenu icon=$HOME/\/.vim/bitmaps/astyler_ansi.bmp 1.263 ToolBar.astyle3 astyle (console) for currently opened single C/C++ code (style ANSI)   \ft2
endif
:menu ToolBar.astyle3 <Esc>:call Astyle_3() :call winrestview(view) <CR><CR>

map <silent> <leader>ft2 <Esc>:call Astyle_3() :call winrestview(view) <CR><CR>
                       " ft2 * Astyle_3 * (Style ANSI)
"   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

command! Was :call FormatAndSave() :call winrestview(view) <CR><CR>

