# .vim

## Description
Just enough **vim customizations** to enable **IDE style** or even better **productive workflow** in vim.

## Spirit of this vim distribution

* Weave together **vim plugins** to create a **portable** and **cohesive** distribution where all **plugins play well together**.
* Provide the most useful **IDE/VIM style** text editing features for a **faster**/**productive** workflow.
* Be as **minimalist**/**precise** as possible keeping **vim** fast.
* Have the most **convienient key-mappings** for the **most used features**.
* **Easy installation** with **minimum hassle**. ( **\*nix agnostic** )
* **Minimum** external dependencies and handled well if any.

## Ensure you have the these installed
* **bash**
* **python**
* **ruby**

## Installation

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/yugaljindle/dotvim/master/install.sh)"
```

## Feature Highlights:

### Productive Workflow with :

1. Sublime style **ctrl-p** project-wide **fuzzy file search** with [ctrlp](https://github.com/kien/ctrlp.vim.git)
2. **IDE** style file tree with [NERDTree](https://github.com/scrooloose/nerdtree.git) and [NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs.git) to explore files in the project
    * Press **,.** to toggle **NERDTree** explorer across tabs.
    * Open files in new tabs with **Ctrl-t** ( To match with **ctrlp** behavior )
3. Sublime style **multiple cursors** for editing multiple lines at once with [multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
4. **IDE** style **GIT diff** as [signify](https://github.com/mhinz/vim-signify)
    * Jump to **next** diff with **cm**
    * Jump to **prev** diff with **mc**
5. Fast file **navigation** with [easymotion](https://github.com/Lokaltog/vim-easymotion.git)
    * **;w** anchor to words
    * **;j** anchor to lines forward
    * **;k** anchor to lines backward
    * **;f** search for character forward
    * **;F** search for character backward
6. Automatically closes **parenthesis**, **braces**, **brackets**, **quotes** as you type with [delimitMate](https://github.com/Raimondi/delimitMate.git)
7. Tab completion of words inside of a search '**/**' with [SearchComplete](http://www.vim.org/scripts/script.php?script_id=474)
8. Easily toggle comments with [tcomment](https://github.com/tomtom/tcomment_vim.git)
    * **Alt-/** to comment/uncomment lines ( **Gvim** only )
    * **gc** to comment/uncomment lines ( Both **vim** & **Gvim** )
9. Automatically switch working directory to **VCS** root with [rooter](https://github.com/airblade/vim-rooter)
10. Better **markdown** support with [markdown](https://github.com/plasticboy/vim-markdown)
11. Visible **indents** with [indentLine](https://github.com/Yggdroot/indentLine)
12. More expressive tabs bar with [taboo](https://github.com/gcmt/taboo.vim)
13. Toggle **Maximize/Restore** your vim **split windows** without loosing original splits with [maximizer](https://github.com/szw/vim-maximizer.git)
    * **F11** to toggle **maximize/restore** the current vim split
14. **Dashboard** with recently used files, sessions & bookmarks with [startify](https://github.com/mhinz/vim-startify.git)
15. Manage **GIT** with [fugitive](https://github.com/tpope/vim-fugitive)
16. Customized status line with [airline](https://github.com/bling/vim-airline)
17. Add/change surrounding brackets/tags with [surround](https://github.com/tpope/vim-surround)
18. Vim autocompletion handled with <tab> using [supertab](https://github.com/ervandew/supertab)
19. Highlight matching **xml/html** tags with [MatchTagAlways](https://github.com/Valloric/MatchTagAlways)
20. Search selected text with **\* or ?** with [vim-visual-star-search](https://github.com/Valloric/MatchTagAlways)


### Time Saving keyboard mappings

1. Save with **shift+w** (**W**) and Quit with **shift-q** (**Q**). Additionally, save with **ctrl-s** as well when using Gvim.
2. Press **alt-i** or **alt-I** **insert/visual/select mode** to change to **Normal mode**
3. Press **,/** to exit search highlight after a search with **/**
4. Press **space** or **ctrl-space** in **normal/visual** and start searching **forward**/**backwards** respectively.
5. Press **shift-h** ( **H** ) to jump to line beginning and **shift-l** ( **L** ) to jump to line ending.
6. Press **F2** in **insert mode** to toggle **paste**
7. Easy **tab navigation** with :
    * **th** -> First tab
    * **tj** -> Next tab
    * **tk** -> Previous tab
    * **tl** -> Last tab
    * **tt** -> New tab
    * **td** -> Close current tab
    * **t1** -> Move to tab 1
    * **t2** -> Move to tab 2
    * **t3** -> Move to tab 3
    * **t4** -> Move to tab 4
    * **t5** -> Move to tab 5
    * **t6** -> Move to tab 6
    * **t7** -> Move to tab 7
    * **t8** -> Move to tab 8
    * **t9** -> Move to tab 9
8. Easy **split navigation** in **command mode** with :
    * **Ctrl-h** -> Move left
    * **Ctrl-j** -> Move down
    * **Ctrl-k** -> Move up
    * **Ctrl-l** -> Move right
9. Move **split windows** around (**horizontal/vertical**) :
    * **,h** -> Move split left
    * **,j** -> Move split down
    * **,k** -> Move split up
    * **,l** -> Move split right
10. Move cursor with-in **insert mode** without arrow-keys: (**normal mode**)
    * **Ctrl-h** -> Move cursor left
    * **Ctrl-j** -> Move cursor down
    * **Ctrl-k** -> Move cursor up
    * **Ctrl-l** -> Move cursor right
    * **Tab** -> Move to next window
    * **Shift-Tab** -> Move to previous window
11. Move **current/selected lines** vertically (**Gvim** Only) :
    * **Alt-j** -> Move line/selection down
    * **Alt-k** -> Move line/selection up
12. **Indent** & **Un-Indent** with **tab** & **shift-tab** respectively (**visual mode**)
13. Press **:w!!** to save with **sudo** ( Useful for system files )
14. Press **Enter** in normal mode to **save** the file.
15. **Copy/Cut** selected text with **ctrl-c/x** respectively and **paste** with **ctrl-v** in **insert mode**. ( Separate clipboards for **copy/cut** with **ctrl-c/x** & **y/d** )
16. **Open**/**Close** folds:
    * **-** to close existing fold/selected fold
    * **=** to open fold
    * **_** to close all folds
    * **+** to open all folds
17. **Revert** current buffer to **last saved state** with **!**
18. **Cycle** through **buffers** in present window with **,\<space\>** and **delete** current buffer with **,\<backspace\>**
19. Regular **visual selection** with **shift-up**, **shift-down**, **shift-left**, **shift-right**
20. Add **quotes(' or "), brackets( [ or ( or { )** to selected text by pressing **', ", (, [, {** after selection.
21. **Selection shortcuts**:
    * Select the current line with **`**
    * Select to the **end of line** except the **newline** character with **v`**
22. Press **,t** move current **split** to new **tab**

### Misc.

* Syntax highlighting for **nginx** configuration ( missing in the standard vim install )

## Author
| [![twitter/yugaljindle](https://www.gravatar.com/avatar/19c28676f977300166c0f35f41a9aae0?s=90)](http://twitter.com/yugaljindle "Follow @yugaljindle on Twitter") |
|---|
| [Yugal Jindle](http://stackoverflow.com/users/731963/yugal-jindle "Stackoverflow !") |
| [![linkedin.com/in/yugaljindle](http://s.c.lnkd.licdn.com/scds/common/u/img/webpromo/btn_in_20x15.png) Profile](http://www.linkedin.com/in/yugaljindle "Connect on LinkedIn") |

## License

Copyright (c) **Yugal Jindle**.  Distributed under the same terms as Vim itself. See `:help license`.
