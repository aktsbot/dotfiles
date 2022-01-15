" minor tweaks for the default ron colorscheme
" https://jonasjacek.github.io/colors/

set background=dark

let g:colors_name = "ront"

hi Statement gui=none
hi Type gui=none cterm=none guifg=#87d787
hi Comment cterm=italic ctermfg=243 gui=italic guifg=#767676
"hi Comment cterm=none ctermfg=243 gui=none guifg=#767676
hi Constant ctermfg=6 guifg=#5fafd7 gui=none
hi String ctermfg=12 guifg=#005fff
hi Function ctermfg=197 guifg=#ff005f
hi Identifier ctermfg=81 cterm=none gui=none guifg=#00d7af
hi Todo            ctermfg=196 ctermbg=226 cterm=bold gui=bold guibg=#ffff00 guifg=#ff0000
hi ColorColumn ctermbg=233 guibg=#121212
hi Pmenu        ctermfg=white ctermbg=4 cterm=none gui=none guifg=#ffffff guibg=#0000ee
hi PmenuSel     ctermfg=white ctermbg=6 cterm=bold gui=bold guifg=#ffffff guibg=#00cdcd
hi PmenuSbar    ctermbg=grey guibg=#808080
hi PmenuThumb   ctermbg=white guibg=#ffffff
hi PreProc      ctermfg=213 guifg=#ff87ff
hi SignColumn    ctermfg=241 ctermbg=none guibg=none guifg=#626262
hi Cursor       ctermfg=66 ctermbg=222 guifg=#5f8787 guibg=#ffd787
hi CursorLine   ctermbg=233 cterm=none gui=none guibg=#121212
hi LineNr        ctermfg=241 ctermbg=233 guifg=#626262 guibg=#121212
hi Visual        ctermbg=235 cterm=none guibg=#262626 gui=none
hi TabLine        ctermfg=244 ctermbg=233 cterm=none gui=none guibg=#121212 guifg=#808080
hi TabLineFill    ctermfg=244 cterm=none gui=none guifg=#808080
hi TabLineSel    ctermfg=232 ctermbg=244 cterm=none gui=none guibg=#808080 guifg=#080808
hi VertSplit cterm=none ctermfg=243 ctermbg=237 gui=none guifg=#767676 guibg=#3a3a3a
hi WarningMsg cterm=none ctermfg=209 ctermbg=none gui=none guibg=none guifg=#ff875f
hi Search ctermfg=197  ctermbg=053  cterm=none gui=none guibg=#5f005f guifg=#ff005f
hi SpellBad ctermbg=darkred guibg=#5f0000
hi FoldColumn      ctermfg=67   ctermbg=233 cterm=none gui=none guibg=#121212 guifg=#5f87af
hi Folded          ctermfg=240  ctermbg=235 cterm=bold gui=bold guibg=#262626 guifg=#585858
hi DiffAdd       ctermbg=4 guibg=#005f00
hi DiffChange    ctermbg=5 guibg=#0000ee
hi DiffDelete    ctermfg=8 ctermbg=6 gui=bold guifg=#f0f0f0 guibg=#00CDCD
hi DiffText      cterm=bold ctermbg=darkred gui=bold guibg=#5f0000
hi MatchParen cterm=bold ctermbg=3 ctermfg=1 gui=bold guibg=#CDCD00 guifg=#1C1C1C

hi StatusLine ctermfg=231 ctermbg=237 cterm=none gui=none guibg=#3a3a3a guifg=#ffffff
hi StatusLineNC ctermfg=16 ctermbg=237 cterm=none gui=NONE guifg=#000000 guibg=#3a3a3a
