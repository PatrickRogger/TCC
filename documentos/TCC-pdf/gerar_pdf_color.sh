#!/bin/bash

# Programa para gerar a versão em pdf (sem paginas em branco)

cp TCC2-final.pdf TCC2-final_cor.pdf 

f1=29-32
f2=35-36
f3=37-40
f4=45-52
f5=53-60
f6=67-78



pdftk A=TCC2-final_cor.pdf B=Branco.pdf cat A$f1 A$f2 A$f3 A$f4 A$f5 A$f6 output TCC2-Garcia-Santos.P.R_color.pdf 

#pdftk TCC2-final.pdf dump_data_utf8 output info_dump_original.info

#pdftk TCC2-Garcia-Santos.P.R.pdf dump_data_utf8 output info_dump_novo.info

#echo Copie os Bookmarks do arquivo info_dump_original.info para o arquivo info_dump_novo.info
#echo Pressione ok:
#read pausa

#pdftk TCC2-Garcia-Santos.P.R.pdf update_info_utf8 info_dump_novo.info output TCC2-Garcia-Santos.P.R-bookmark.pdf



 
