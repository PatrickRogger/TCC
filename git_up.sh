#!/bin/bash
cd /home/patrick/TCC/TCC-git
cp documentos/texto_parcial_2018-05-16/source_utf-8/texto_parcial_2018-05-16.pdf ultima_versao.pdf

git status
git add *

echo "----Assunto Commit:"
read texto_commit

git commit -m "$texto_commit"
git push origin master

