#!/bin/sh


curl 'https://portal.isucon.net/contest/jobs/enqueue/' \
  -X 'POST' \
  -H 'authority: portal.isucon.net' \
  -H 'accept: */*' \
  -H 'accept-language: ja,en;q=0.9,en-GB;q=0.8,en-US;q=0.7' \
  -H 'content-length: 0' \
  -H 'cookie: csrftoken=T4KUfnBPZVDqqxNliOGwjf179TptH2Gb; sessionid=xygn9z70olba3wzvx24soe0phrob4kl9; _gid=GA1.2.314264672.1700852059; _ga=GA1.1.1351332547.1700505863; _ga_85HKR6CF7G=GS1.1.1700873025.3.1.1700874029.0.0.0' \
  -H 'origin: https://portal.isucon.net' \
  -H 'referer: https://portal.isucon.net/contest/' \
  -H 'sec-ch-ua: "Microsoft Edge";v="119", "Chromium";v="119", "Not?A_Brand";v="24"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0' \
  -H 'x-csrftoken: wkEyJGrpP9eWLdurCGigTfOtFGEV29FHfeeiOTS4EUHc1A7CKkOC2kFqEpTez1bI' \
  -H 'x-requested-with: XMLHttpRequest' \
  --compressed


