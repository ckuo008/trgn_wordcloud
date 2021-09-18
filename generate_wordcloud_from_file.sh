#!/bin/bash

fileName='my_webpages.txt'
lines=$(cat ${fileName})
pageFolder="current_pages"
wordAggFile="my_current.txt"
worldCloudCli="${HOME}/.local/bin/wordcloud_cli"
html2text="${HOME}/.local/bin/html2text"
rm -f ${wordAggFile}

index=0
for line in ${lines}
do
    index=$(( index + 1))
    htmlFileName="${pageFolder}/file${index}"
    wget ${line} -O ${htmlFileName} && \
        ${html2text} ${htmlFileName} >> ${wordAggFile}
done

# generate word cloud img and put it in html folder 
${worldCloudCli} --text my_current.txt --imagefile wordcloud.png && \
    mv wordcloud.png ${HOME}/public_html

# insert current time to html
sed -i "s/.*current time.*/\t\<p\>current time=`date` \<\/p\>/" ${HOME}/public_html/index.html
