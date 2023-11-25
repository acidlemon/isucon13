#!/bin/bash

cat /var/log/nginx/access.log | alp json -r -o count,method,uri,min,avg,p99,max,sum --sort sum \
-m "/api/condition/.+,/api/isu/.+/graph,/api/isu/.+/icon,/api/isu/.+,/isu/.+,/isu/.+/icon,/isu/.+/condition"
