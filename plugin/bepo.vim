""
"" mapping du clavier bépo->qwerty en mode normal
""
" nvim compatible remap 
" configuration du copié sur le ç car y est sur la touche composé ^
 
noremap ç y
noremap ^ y

" configuration vim only
if has('nvim')
    finish
endif

" configuration des lettres

inoremap « <
inoremap » >
cnoremap « <
cnoremap » >

inoremap < «
inoremap > »
cnoremap < «
cnoremap > »



imap qq <Esc>
 
noremap b q
noremap é w
noremap p e
noremap o r
noremap è t
noremap ^ y
noremap v u
noremap d i
noremap l o
noremap j p
noremap z [
noremap w ]
noremap a a
noremap u s
noremap i d
noremap e f
noremap \ \
noremap g ,
noremap c h
noremap t j
noremap s k
noremap r l
noremap n ;
noremap m '
noremap ê <
noremap à z
noremap àà zz
noremap y x
noremap x c
noremap . v
noremap k b
noremap ' n
noremap q m
noremap g ,
noremap , g
noremap ,, gg
noremap h .
noremap f /
noremap B Q
noremap É W
noremap P E
noremap O R
noremap È T
noremap ! Y
noremap V U
noremap D I
noremap L O
noremap J P
noremap Z {
noremap W }
noremap A A
noremap U S
noremap I D
noremap E F
noremap ; G
noremap C H
noremap T J
noremap S K
noremap R L
noremap N :
noremap M "
noremap Ç \|
noremap Ê >
noremap À Z
noremap ÀÀ ZZ
noremap Y X
noremap X C
noremap : V
noremap K B
noremap ? N
noremap Q M
noremap G <
noremap H >
noremap F ?

" racourcis doubles

nnoremap ii dd
nnoremap ,è gt
nnoremap ,È gT
 
" configuration des nombres
noremap « <
noremap < «
noremap » >
noremap > »  

" configuration pour les chiffres

noremap $ `
noremap " 1
noremap « 2
noremap » 3
noremap ( 4
noremap ) 5
noremap @ 6
noremap + 7
noremap - 8
noremap / 9
noremap * 0
noremap = - 
noremap % = 

noremap # ~
noremap 1 !
noremap 2 @
noremap 3 #
noremap 4 $
noremap 5 %
noremap 6 ^
noremap 7 &
noremap 8 *
noremap 9 (
noremap 0 )
noremap ° _
noremap ` +
 
