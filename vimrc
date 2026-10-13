setlocal nocompatible
setlocal number
setlocal showmode
setlocal autoindent
setlocal ruler
setlocal shm=filmnrwxt
setlocal sm
setlocal wildmode=list:longest,full
setlocal showcmd
setlocal report=0
setlocal ts=4
set visualbell
set nowrap    "Essa opção desabilita a quebra de linha
setlocal infercase
set wildignore=*.o,*.obj,*.bak,*.exe
setlocal laststatus=2                                    "Mostrar duas linhas.
highlight StatusLine ctermfg=blue   ctermbg=white  "Fundo azul e fonte branca.
set title
set titlestring=%<Nome=%t%m%r%h%w
\%=
\BUFFER=%n
\%(\ %a%)
\%28([TOTAL\ DE\ LINHAS=%L]%)
setlocal modeline
setlocal textwidth=78
setlocal cedit=<Esc>
setlocal hi=5000
setlocal viminfo='100,\"1000,:40,%,n~/.viminfo
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
setlocal background=dark
syntax on
setlocal hlsearch                                 " ativa o contraste de cores
hi    Search ctermbg=yellow ctermfg=red
hi IncSearch ctermbg=green  ctermfg=cyan
if &term =~ "xterm" || &term =~ "linux"
  set background=dark
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif
if &term =~ "xterm"
  set t_kD=[3~
endif

if argc() > 8
   nmap > :bn<CR>
   nmap < :bp<CR>
endif
" Mapeamento para configurar as cores do prompt de comando
cmap cor Cor
com -nargs=1 Cor call ColoreTerminal(<arg>)
com -nargs=0 Testacor :let i=0
	 \|	 while i<=ArraySize(g:ArrayOfcolors,'')
    \|		 call ColoreTerminal(i)
    \|		 let i=i+1
	 \|		 sleep
	 \|		 redraw
	 \|		 if exists('g:colors_name')
	 \|			call Message('info',g:colors_name.' - '.i)
	 \|		 else 
    \|			call Message('Erro',"variável g:colors_name[".i."] não definida")
	 \|		 endif
