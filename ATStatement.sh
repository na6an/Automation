rename -n 's/_([0-9]{1})_Statement/_0$1_Statement/' *.pdf
for f in *.pdf ; do pdftotext -layout -f 3 -l 3 "${f}" - | grep "Total" | tr -s ' ' | cut -d ' ' -f2  >> out.txt; done
