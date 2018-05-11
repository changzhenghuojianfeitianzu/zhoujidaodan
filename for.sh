#!/bin/bash
i=139
while [ $i -le 254  ]
do
  IP="172.40.56.$i"
  ping -c3 -i0.1 -W1  $IP &> /dev/null
  if [ $? -eq 0 ];then
	echo "172.4.056.$i pass"
  else
	echo "no pass"
  fi
   let i++ ;echo $i

done

