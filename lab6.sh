#!/bin/bash

PARSED_XML=$(grep .mp[3,g] /root/medialab/media.xml)
PARSED_XML=$(echo "${PARSED_XML}" | awk 'BEGIN { FS = ">" } { print$2 }')
PARSED_XML=$(echo "${PARSED_XML}" | awk 'BEGIN { FS = "<" } { print$0 } END { OFS = "\n" }')
echo ${PARSED_XML} > /root/parsed_xml.txt


