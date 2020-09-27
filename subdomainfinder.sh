for subname in $(cat $2);do host -t A $subname.$1 | grep -v "NXDOMAIN" | awk -F " " '{print $1}' ;done
