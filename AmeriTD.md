Listly  
https://www.listly.io/en  
https://chrome.google.com/webstore/detail/listly-data-scraper/ihljmnfgkkmoikgkdkjejbkpdpbmcgeh?hl=en-US  
Batch Link Downloader  
https://chrome.google.com/webstore/detail/batch-link-downloader/aiahkbnnpafepcgnhhecilboebmmolnn?hl=en-US  

`rename -n 's/_([0-9]{1})_Statement/_0$1_Statement/' *.pdf`  
`pdftotext -f 3 -l 3 2020_12_Statement.pdf text.txt`  
`find ./* -name '*.pdf' -exec sh -c 'pdftotext -f 3 -l 3 {} - | grep -n 'Yield' -A 10 | grep "\$*.*" >> out.txt' \;`  
For Scottrade Statements,  
`grep -A20 "TOTAL CREDITS" *.txt | grep "TOTAL MONEY BALANCE" -A20 | grep "TOTAL ACCOUNT VALUE" -B20 | awk -F'Statement.txt-' '{print $2}' | grep '[0-9.]\+' >> out.txt`  

`find ./* -name '*.pdf' -exec sh -c 'pdftotext -f 1 -l 1 {} - | grep -A20 "TOTAL CREDITS" | grep "TOTAL MONEY BALANCE" -A20 | grep "TOTAL ACCOUNT VALUE" -B20 | awk -F"Statement.txt-" "{print $2}" | grep "[0-9.]\+"' \;`  

`for f in *.pdf ; do echo ${f} >> out.txt; pdftotext -f 1 -l 1 "${f}" - | grep -A50 "OPENING TOTAL MONEY BALANCE" | grep -A30 "TOTAL MONEY BALANCE" | grep "CLOSING TOTAL MONEY BALANCE" -B30 | awk -F"Statement.txt-" "{print $2}" | grep "[0-9.]\+" | grep -x '.\{7,12\}' | sort -n -s | grep -v "-" | sort -n -s | tail -1 >> out.txt; done`
