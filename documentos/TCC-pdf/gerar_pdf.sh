#!/bin/bash

# Programa para gerar a versão em pdf (sem paginas em branco)

cp ../TCC-II/TCC2-final.pdf TCC2-final.pdf 

capa=1
folharosto=3
ficha=4
aprovacao=5
dedicatoria=7
agradecimentos=9
epigrafe=11
resumo=13
abstract=15
listafi=17-18
listasi=19
listasim=21
sumario=23
intro=25
objetivos=27
fundamentos=29-36
aquisi=37-45
desenvol=47-52
resultados=53-59
conside=61-62
referencias=63-64
codigo=65
apendiceA=67-78

pdftk A=TCC2-final.pdf B=aprovacao.pdf cat A$capa A$folharosto A$ficha B1 A$dedicatoria A$agradecimentos A$epigrafe A$resumo A$abstract A$listafi A$listasi A$listasim A$sumario A$intro A$objetivos A$fundamentos A$aquisi A$desenvol A$resultados A$conside A$referencias A$codigo A$apendiceA output TCC2-Garcia-Santos.P.R.pdf 

pdftk TCC2-final.pdf dump_data_utf8 output info_dump_original.info

pdftk TCC2-Garcia-Santos.P.R.pdf dump_data_utf8 output info_dump_novo.info

echo Copie os Bookmarks do arquivo info_dump_original.info para o arquivo info_dump_novo.info
echo Pressione ok:
read pausa

pdftk TCC2-Garcia-Santos.P.R.pdf update_info_utf8 info_dump_novo.info output TCC2-Garcia-Santos.P.R-bookmark.pdf



 
