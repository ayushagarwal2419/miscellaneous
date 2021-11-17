#!/usr/bin/env bash

path='/media/lalaram-arya/ec372f6e-ad12-42db-bc12-3e5375ce5efb/olr2021/Labels'

for LangCode in ct-cn zh-cn id-id ja-jp ru-ru ko-kr vi-vn Kazak Tibet Uyghu Minnan Shanghai Sichuan th-th te-in ms-my hi-in;do
TextFileName="${LangCode}.txt"
#echo "$TextFileName"
TextFilePath="${path}/${TextFileName}"
#touch "${TextFilePath}"
echo "$TextFilePath"
find -iname *.wav| grep ${LangCode}>>"${TextFilePath}"

done 
