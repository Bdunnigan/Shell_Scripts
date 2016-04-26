#!/bin/bash

PARSED_XML=$(grep .mp[3,g] /root/medialab/media.xml)
PARSED_XML=$(echo "${PARSED_XML}" | awk '{ FS = ">" } { print$2 }')
(echo "${PARSED_XML}" | awk '{ FS = "<"; } { print$1; }' > /root/parsed_xml.txt)

(ls /root/medialab > /root/medialab_contents.txt)


MEDIALAB_COUNTER=0
XML_COUNTER=0

echo "Files not in media.xml:"
while read line; do
	if ! (grep -q "${line}" /root/parsed_xml.txt); then
		echo "${line}"
		((MEDIALAB_COUNTER+=1))
	fi
done < /root/medialab_contents.txt

echo "Files not in medialab directory:"
while read line; do
	if ! (grep -q "${line}" /root/medialab_contents.txt); then
		echo "${line}"
		((XML_COUNTER+=1))
	fi
done < /root/parsed_xml.txt


echo "${MEDIALAB_COUNTER} media files in medialab directory that are NOT listed in media.xml"
echo "${XML_COUNTER} media files in media.xml that are NOT in medialab directory"


