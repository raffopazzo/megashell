" Vertical column
hi ColorColumn ctermbg=DarkGrey

" Tabs
hi TabLine cterm=reverse
hi TabLineFill ctermbg=Grey ctermfg=Grey
hi TabLineSel cterm=reverse

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
