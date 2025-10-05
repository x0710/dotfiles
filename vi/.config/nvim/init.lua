vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false

vim.o.cursorline = true       -- 高亮当前行
vim.o.showmode = true        -- 不在命令行显示 -- INSERT --，用状态栏替代
vim.o.termguicolors = true    -- 启用真彩色
vim.o.signcolumn = "yes"      -- 始终显示左侧标志列，避免跳动
vim.o.scrolloff = 5           -- 光标上下保留的最少行数
vim.o.sidescrolloff = 8       -- 左右保留的最少列数
vim.o.colorcolumn = "80"      -- 在第 80 列显示参考线

vim.o.ignorecase = false       -- 搜索时忽略大小写
vim.o.smartcase = false        -- 如果有大写字母，则仍区分大小写
vim.o.hlsearch = true         -- 高亮搜索结果
vim.o.incsearch = false        -- 输入时即时搜索

vim.o.tabstop = 4             -- 一个 <Tab> 显示为 4 个空格
vim.o.shiftwidth = 4          -- 自动缩进使用 4 个空格
vim.o.expandtab = true        -- 将 <Tab> 转为空格
vim.o.smartindent = true      -- 新行智能缩进

vim.o.mouse = "a"             -- 启用鼠标支持
vim.o.clipboard = "unnamedplus" -- 使用系统剪贴板
vim.o.undofile = true         -- 持久化撤销
vim.o.backup = false          -- 不生成备份文件
vim.o.swapfile = false        -- 不生成 swap 文件

vim.o.updatetime = 300        -- CursorHold 触发时间（ms）
vim.o.timeoutlen = 500        -- 映射按键序列超时时间
vim.o.lazyredraw = true       -- 执行宏时不重绘，提高性能

