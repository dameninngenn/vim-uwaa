"=============================================================================
" FILE: uwaa.vim
" AUTHOR:  Takashi Higashigata (a.k.a dameninngenn)
" Last Modified: 3 Dec 2010
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Version: 0.1, for Vim 7.0
"=============================================================================

command! -nargs=? Uwaa call s:display_uwaa(<q-args>)

function! s:display_uwaa(mode)"{{{
  let l:cmdheight_save = &cmdheight
  let l:mode = (a:mode != '') ? a:mode : "normal"
  
  let l:aa = [
    \[
      \ " 　　　/＼＿＿_／ヽ  　ヽ",
      \ "　　 ／       :::::＼　つ",
      \ "　  |, ,--､   --、:::|　わ",
      \ "　　| ､_(o),:_(o),:::|ぁぁ",
      \ " 　 | 　　::<　 　 ::|あぁ",
      \ "　　 ＼ /( [三] )ヽ:／ああ",
      \ " 　　／｀-------―´＼ぁあ",
    \],
  \]

  redraw
  echon join(l:aa[0], "\n")
  echo repeat("\n", winheight(0)-len(aa[0]))

  if l:mode == "very_short"
      sleep 1
  elseif l:mode == "short"
      sleep 3
  elseif l:mode == "normal"
      sleep 5
  elseif l:mode == "long"
      sleep 10
  elseif l:mode == "very_long"
      sleep 100
  else
      sleep 5
  endif

  redraw

  let &cmdheight = l:cmdheight_save
endfunction"}}}

