#!/bin/bash

cat /var/log/nginx/access.log | alp json -r -o count,method,uri,min,avg,p99,max,sum --sort sum \
-m "/api/user/.+/theme,/api/user/.+/icon,/api/user/.+/statistics,/api/user/.+/livestream,/api/livestream/.+,/api/livestream/.+/livecomment,/api/livestream/.+/reaction,/api/livestream/.+/report,/api/livestream/.+/ngwords,/api/livestream/.+/livecomment/.+/report,/api/livestream/.+/moderate,/api/livestream/.+/enter,/api/livestream/.+/exit"
