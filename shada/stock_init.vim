let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Banma/banma_page
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 static/page/stockInit/StockInitApp.vue
badd +5 static/page/stockInit/util/v-pager.vue
badd +0 ~/Banma/banma_page
badd +0 static/page/stockInit/main-entry.js
argglobal
silent! argdel *
argadd ~/Banma/banma_page
edit static/page/stockInit/StockInitApp.vue
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 141 + 141) / 283)
exe 'vert 2resize ' . ((&columns * 141 + 141) / 283)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
1
normal! zo
178
normal! zo
190
normal! zo
195
normal! zo
196
normal! zo
197
normal! zo
206
normal! zo
208
normal! zo
209
normal! zo
210
normal! zo
213
normal! zo
217
normal! zo
226
normal! zo
230
normal! zo
236
normal! zo
247
normal! zo
248
normal! zo
251
normal! zo
254
normal! zo
257
normal! zo
260
normal! zo
263
normal! zo
266
normal! zo
267
normal! zo
269
normal! zo
275
normal! zo
276
normal! zo
278
normal! zo
284
normal! zo
285
normal! zo
287
normal! zo
293
normal! zo
294
normal! zo
296
normal! zo
303
normal! zo
304
normal! zo
307
normal! zo
311
normal! zo
313
normal! zo
318
normal! zo
322
normal! zo
325
normal! zo
329
normal! zo
331
normal! zo
336
normal! zo
341
normal! zo
346
normal! zo
351
normal! zo
367
normal! zo
367
normal! zo
let s:l = 355 - ((41 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
355
normal! 06|
wincmd w
argglobal
edit static/page/stockInit/main-entry.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 18 - ((17 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 033|
wincmd w
exe 'vert 1resize ' . ((&columns * 141 + 141) / 283)
exe 'vert 2resize ' . ((&columns * 141 + 141) / 283)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOmrc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
