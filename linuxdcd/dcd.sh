#!/bin/bash

#выдаем стоки с урлами
#URL_LIST=$(cat list.txt | egrep -o "http:\/\/[a-z0-9]+.data.cod.ru\/[0-9]*" | uniq -u )

function del_url_from_file {
	grep -v "$URL" list.txt  > /tmp/dcdlist.tmp && mv /tmp/dcdlist.tmp list.txt # удаляем строку с нашим урлом
}

for URL in $( egrep -o "http:\/\/[a-z0-9\-]+.data.cod.ru\/[0-9]*" list.txt  | uniq -u )
do
	#echo "open $URL"
	HTML_DATA=$(wget -q -O - $URL) # дергаем страницу
	FILE_URL=$( echo $HTML_DATA | egrep -o '(http:\/\/[a-z0-9.\-]*data.cod.ru\/\?[^"]*)') # ищим ссылку на файл
	echo "$FILE_URL"
	if [[ "$FILE_URL" != "" ]]
	then
		# качаем
		if aria2c "$FILE_URL" -d "/mnt/f/Films/dvcod/aria" -m 0 # -l log.txt
		then
			echo "$URL" >> downloaded.txt
			# удаляем закаченный урл из файла
			del_url_from_file
		fi
	else
		echo "ошибка. файл не закачен $URL"
		echo "$URL" >> errors.txt
		del_url_from_file
	fi
done
