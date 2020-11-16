# artistic_styler_console_direct.vim
Artistic Style code formatter plugin for Vim/GVim

Put 'artistic_styler_console_direct.vim' file directly into the 'plugin' folder or use a plugin manager such as https://github.com/junegunn/vim-plug.

1. Style Java (minimal): Leader+ft1 (i.e. \ft1)
2. Style BSD (minimal): Leader+ft2 (i.e. \ft2)
3. Style GNU (minimal): Leader+ft3 (i.e. \ft3)

Can be operated from the Toolbar in GVim.

NOTE: Copy 'bitmap' folder to your HOME directory, i.e., `%userprofile%\.vim` or `%userprofile%\vimfiles` (on Windows) or `~/.vim` (on Linux) if you are using a plugin manager. For example, vim-plug stores all the plugins into the 'plugged' folder. Toolbar icons will not be loaded from `%userprofile%\.vim\plugged\artistic_styler_console_direct.vim\bitmaps` directory. Icons can only be loaded from `%userprofile%\.vim\bitmaps` folder.
