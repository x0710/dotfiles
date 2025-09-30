" 支援 256 色
set t_Co=256

" 終端機背景色 : dark / light
set background=dark

" 內建風格 ( 縮寫指令 colo )
" 輸入 colorscheme 空一格，再按 Tab 可以依次預覽 : 
" blue / darkblue / default / delek / desert / eldlord
" evening / industry / koehler / morning / murphy / pable
" peachpuff / ron / shine / slate / torte / zollner
" colorscheme default
colorscheme habamax
" 搜尋，高亮標註
set hlsearch

" 配置檔案路徑，讓 find 指令更好用
set path=.,/usr/include,,**

" ts = tabstop
set ts=4 "縮排 4 格

" tab 替換成空格
set expandtab

" 自動縮排 ｜ autoindent / smartindent / cindent
set autoindent " 跟上一行的縮進一致
" JSON 文字格式化 
" command! JSONFormat :execute '%!python -m json.tool' 

command! JSONFormat :execute '%!python -m json.tool'
\ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)).encode(\"utf-8\"), sys.stdin.read()))"'
\ | :set ft=javascript
\ | :1

" XML 文字格式化
command! XMLFormat :execute '%!xmllint --format -'

" 常用的文字替代
command! Br2line :execute '%s/<br>/---/g'

set number
set relativenumber
syntax enable
set showcmd
set cursorline
set nowrap
set sidescrolloff=15 " 左右滚动时翻页
set ruler " 显示行纵
set showmatch " 显示匹配括号
set incsearch " 搜索自动跳到第一个
set visualbell
" set list " 显示隐藏字符
