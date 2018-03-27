#!/bin/bash

cp documentos/pre_projeto_2018-04-04/source_latex/pre_projeto_TCC1.pdf ultima_versao.pdf

git status
git add *

echo "----Assunto Commit:"
echo " "
read texto_commit

git commit -m "$texto_commit"
git push origin master

