Listly  
https://www.listly.io/en  
https://chrome.google.com/webstore/detail/listly-data-scraper/ihljmnfgkkmoikgkdkjejbkpdpbmcgeh?hl=en-US  
Batch Link Downloader  
https://chrome.google.com/webstore/detail/batch-link-downloader/aiahkbnnpafepcgnhhecilboebmmolnn?hl=en-US  

`rename -n 's/_([0-9]{1})_Statement/_0$1_Statement/' *.pdf`  
`pdftotext -f 3 -l 3 2020_12_Statement.pdf text.txt`  
`find ./* -name '*.pdf' -exec sh -c 'pdftotext -f 3 -l 3 {} - | grep -n 'Yield' -A 10 | grep "\$*.*" >> out.txt' \;`  
