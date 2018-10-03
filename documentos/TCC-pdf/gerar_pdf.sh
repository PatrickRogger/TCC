#!/bin/bash

# Programa para gerar a versão em pdf (sem paginas em branco)

cp ../TCC-II/TCC2-final.pdf TCC2-final.pdf 

capa=1
folharosto=3
ficha=4
aprovacao=5
resumo=7
abstract=9
listafi=11
listasi=13
listasim=15
sumario=17
intro=19
objetivos=21
fundamentos=23-29
aquisi=31-34
desenvol=35
resultados=37
conside=39
referencias=41

pdftk A=TCC2-final.pdf cat A$capa A$folharosto A$ficha A$aprovacao A$resumo A$abstract A$listafi A$listasi A$listasim A$sumario A$intro A$objetivos A$fundamentos A$aquisi A$desenvol A$resultados A$conside A$referencias output TCC2-Garcia-Santos.P.R.pdf 

pdftk TCC2-final.pdf dump_data_utf8 output info_dump_original.info

pdftk TCC2-Garcia-Santos.P.R.pdf dump_data_utf8 output info_dump_novo.info

echo Copie os Bookmarks do arquivo info_dump_original.info para o arquivo info_dump_novo.info
echo Pressione ok:
read pausa

pdftk TCC2-Garcia-Santos.P.R.pdf update_info_utf8 info_dump_novo.info output TCC2-Garcia-Santos.P.R-bookmark.pdf



 
