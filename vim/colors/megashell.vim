" Vertical column
hi ColorColumn ctermbg=DarkGrey

" Tabs
hi TabLine cterm=bold
hi TabLineFill ctermbg=Grey ctermfg=Grey
hi TabLineSel cterm=bold,underline

" Special characters
set list
set listchars=eol:$,tab:>-,trail:~
hi NonText ctermbg=NONE ctermfg=DarkGrey
hi SpecialKey ctermbg=NONE ctermfg=DarkGrey

" vimdiff
hi DiffAdd ctermbg=DarkGreen
hi DiffDelete ctermbg=NONE ctermfg=Red
hi DiffChange ctermbg=Brown
hi DiffText ctermbg=Red ctermfg=Yellow
