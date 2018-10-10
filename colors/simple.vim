" Vim color file
" Maintainer: Marcos Minond
" Last Change: 2018-02-04

set background=light
syntax reset

let s:colBackground = '248'
let s:colError = '196'
let s:colLine = '230'
let s:colScalar = '27'
let s:colURL = 'blue'

fun <SID>X(group, fg, bg, attr)
  exec 'hi clear ' . a:group

  if a:fg != ''
    exec 'hi ' . a:group . ' guifg=' . a:fg . ' ctermfg=' . a:fg
  endif
  if a:bg != ''
    exec 'hi ' . a:group . ' guibg=' . a:bg . ' ctermbg=' . a:bg
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
endfun

fun <SID>XS(gs, fg, bg, attr)
  for group in a:gs
    call <SID>X(group, a:fg, a:bg, a:attr)
  endfor
endfun

" Global
call <SID>X('NonText', '243', 'none', '')
call <SID>X('Normal', 'black', 'none', '')

" Search
call <SID>XS(['Search', 'IncSearch'], 'black', '226', 'bold')

" Interface
call <SID>X('ColorColumn', '253', 'none', 'underline')
call <SID>X('LineNr', s:colBackground, '', '')
call <SID>X('CursorLineNR', '240', '', '')
call <SID>X('MatchParen', 'black', '251', '')
call <SID>X('SignColumn', 'black', 'none', '')
call <SID>X('StatusLine', 'white', '33', 'bold')
call <SID>X('StatusLineNC', 'black', '254', 'bold')
call <SID>X('VertSplit', s:colBackground, 'white', '')
call <SID>X('Visual', 'none', s:colLine, 'none')
call <SID>X('WildMenu', 'black', 'none', '')
call <SID>XS(['CursorColumn', 'CursorLine'], 'none', s:colLine, 'none')

" Pmenu
call <SID>X('Pmenu', 'black', '255', '')
call <SID>X('PmenuSbar', 'white', '250', '')
call <SID>X('PmenuSel', 'white', s:colScalar, '')
call <SID>X('PmenuThumb', 'white', '246', '')

" Diff
call <SID>XS(['DiffAdd', 'diffAdded'], s:colScalar, 'none', 'bold')
call <SID>XS(['DiffDelete', 'diffRemoved'], s:colError, 'none', 'bold')
call <SID>XS(['DiffText', 'diffLine', 'diffFile', 'diffNewFile'], 'black', 'none', 'bold')
call <SID>X('DiffChange', '203', 'none', 'none')

" Code
call <SID>XS(['Conditional', 'Constant', 'Delimiter', 'Exception', 'Function', 'Identifier', 'Keyword', 'Label', 'Operator', 'Special', 'SpecialKey', 'Statement', 'StorageClass', 'Structure', 'Title', 'Type'], 'black', 'none', '')
call <SID>XS(['Include', 'PreProc'], 'black', 'none', 'bold')

" Code : highlights
call <SID>XS(['Todo', 'Error'], s:colError, 'none', '')

" Code : comments
call <SID>X('Comment', s:colBackground, 'none', '')
call <SID>X('SpecialComment', s:colBackground, 'none', 'bold')

" Code : primitives
call <SID>XS(['Number', 'Boolean'], s:colScalar, 'none', '')

" Code : user types
call <SID>XS(['Character', 'String'], s:colScalar, 'none', '')
call <SID>X('SpecialChar', s:colScalar, 'none', 'bold')

" Plugins
call <SID>X('GitGutterAddDefault', '70', 'none', '')
call <SID>X('GitGutterChangeDefault', s:colScalar, 'none', '')
call <SID>X('GitGutterDeleteDefault', s:colError, 'none', '')
call <SID>X('NERDTreeClosable', 'black', '', '')
call <SID>X('NERDTreeDir', '240', '', '')
call <SID>X('NERDTreeDirSlash', '252', '', '')
call <SID>X('NERDTreeExecFile', 'black', 'white', '')
call <SID>X('NERDTreeOpenable', 'black', '', '')

" Overrides
call <SID>X('makeTarget', s:colScalar, 'none', 'bold')
call <SID>XS(['htmlLink', 'mkdInlineURL', 'mkdListItem'], s:colURL, 'none', 'bold')
call <SID>XS(['htmlBold'], 'black', 'none', 'bold')
call <SID>X('htmlItalic', 'black', 'none', 'underline')
call <SID>XS(['cssInclude', 'vimInsert', 'htmlH1'], 'black', 'none', 'bold')

" Overrides : re-linking
hi link cssAttributeSelector              cssTagName
hi link cssClassName                      cssTagName
hi link cssIdentifier                     cssTagName
hi link cssPseudoClassId                  cssTagName
hi link cssSelectorOp                     cssTagName
hi link cssTagName                        makeTarget
hi link cssVendor                         cssTagName
hi link goSpecialString                   SpecialChar
hi link htmlH2                            htmlH1
hi link htmlH3                            htmlH1
hi link htmlH4                            htmlH1
hi link htmlH5                            htmlH1
hi link htmlH5                            htmlH1
hi link htmlSpecialChar                   SpecialChar
hi link makeCommands                      none
hi link mkdBold                           htmlBold
hi link mkdCode                           SpecialChar
hi link mkdHeading                        htmlH1
hi link mkdLink                           htmlLink
hi link mkdSnippetEBNF                    mkdCode
hi link mkdSnippetTEXT                    mkdCode
hi link typescriptEndColons               typescriptOpSymbols
hi link typescriptExceptions              Exception
hi link typescriptInterpolation           SpecialChar
hi link typescriptInterpolationDelimiter  SpecialChar
hi link typescriptSpecial                 SpecialChar

delf <SID>X
delf <SID>XS
