#!/bin/bash

# Programa para gerar a versão em pdf (sem paginas em branco)

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
aquisi=31
desenvol=33
resultados=35
conside=37
referencias=39

pdftk A=TCC2-final.pdf cat A$capa A$folharosto A$ficha A$aprovacao A$resumo A$abstract A$listafi A$listasi A$listasim A$sumario A$intro A$objetivos A$fundamentos A$aquisi A$desenvol A$resultados A$conside A$referencias output TCC2-Garcia-Santos.P.R.pdf 


