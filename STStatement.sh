rename -n 's/_([0-9]{1})_Statement/_0$1_Statement/' *.pdf
for f in *.pdf ; do echo ${f} >> out.txt; pdftotext -f 1 -l 1 "${f}" - | grep -A50 "OPENING TOTAL MONEY BALANCE" | grep -A30 "TOTAL MONEY BALANCE" | grep "CLOSING TOTAL MONEY BALANCE" -B30 | awk -F"Statement.txt-" "{print $2}" | grep "[0-9.]\+" | grep -x '.\{7,12\}' | sort -n -s | grep -v "-" | sort -n -s | tail -1 >> out.txt;  done
