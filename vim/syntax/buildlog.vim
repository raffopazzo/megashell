syn match Detail "^\(In file included\| \+\) from [/a-zA-z0-9_\.-]\+.*"
syn match Error "^[/a-zA-z0-9_\.-]\+\:[0-9]\+\:[0-9]\+\: error:.*"
syn match Note "^[/a-zA-z0-9_\.-]\+\:[0-9]\+\:[0-9]\+\: note:.*"
syn match Warn "^[/a-zA-z0-9_\.-]\+\:[0-9]\+\:[0-9]\+\: warning:.*"

hi Detail ctermfg=blue
hi Error ctermfg=red ctermbg=NONE
hi Note ctermfg=green
hi Warn ctermfg=yellow
