#!/bin/sh

#выдаем стоки с урлами
URL_LIST=$(cat list.txt | egrep -o "http:\/\/[a-z0-9]+.data.cod.ru\/[0-9]*" | uniq -u )

function del_url_from_file {
	EURL=$( echo $URL | sed -e "s/\///" ) # ссылка с экранированными символами для регулярки 
        sed -e "s/^[^$]*$EURL[^$]*$//" -i list.txt # удаляем строку с нашим урлом
}

for URL in $URL_LIST
do
	echo "open $URL"
	HTML_DATA=$(wget -q -O - $URL) # дергаем страницу
	FILE_URL=$( echo $HTML_DATA | egrep -o '(http:\/\/[a-z0-9.]*data.cod.ru\/\?[^"]*)') # ищим ссылку на файл
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

#выдергиваем урл
#expr match "20. Emperor Disqualification - Two Traitors - http://dsv.data.cod.ru/514725" '[^S]*\(http:\/\/[a-z0-9]*.data.cod.ru\/[0-9]*\)'

#парсим страницу
#wget -q -O - http://dsv.data.cod.ru/514725 | egrep '<p align="center"><a href="(http:\/\/[a-z0-9.]*data.cod.ru\/\?[^"]*)'

#дергаем ссылку на файл
#get -q -O - http://dsv.data.cod.ru/514725 | egrep -o '(http:\/\/[a-z0-9.]*data.cod.ru\/\?[^"]*)'

# удаляем строку из файла
#sed -e "s/^[^$]*$URL[^$]*//" list_bk.txt
