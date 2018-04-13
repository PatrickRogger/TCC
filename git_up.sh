#!/bin/bash
cd /home/patrick/TCC/TCC-git
cp documentos/texto_parcial_2018-05-16/source_latex_utf/texto_parcial_TCC1.pdf ultima_versao.pdf

git status
git add *

echo "----Assunto Commit:"
echo " "
read texto_commit

git commit -m "$texto_commit"
git push origin master

