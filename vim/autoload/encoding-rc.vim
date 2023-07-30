" Encoding
if has('win32')
  set encoding=cp1251
  set fileencoding=cp1251
else
  set encoding=utf-8
  set fileencoding=utf-8
endif

set fileencodings=usc-bom,utf-8,cp1251,koi8-r,cp866

set wcm=<Tab>
amenu Encoding.utf-8        :e ++enc=utf-8 <CR>
amenu Encoding.Cp866        :e ++enc=cp866<CR>
amenu Encoding.Cp1251       :e ++enc=cp1251<CR>
amenu Encoding.koi8-r       :e ++enc=koi8-r<CR>
map <F8> :amenu Encoding.<TAB>
