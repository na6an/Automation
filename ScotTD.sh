rename -n -e 's/_([0-9]{1})_Statement/_0$1_Statement/' *.pdf
for f in *.pdf ; do pdftotext -layout -f 1 -l 1 "${f}" - | grep "TOTAL ACCOUNT VALUE" | tr -s ' ' | cut -d ' ' -f5  >> out.txt; done
