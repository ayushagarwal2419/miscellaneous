#!/usr/bin/env bash
path='/home/ayush/Documents/Speech/Voice_conversion/One_shot_server/LibreTTS/train-clean_aug'
Aug='aug_'
for dir in */; do
Spk="$path/$dir"
newname="${Aug}${dir}"
newname_path="$path/${newname}"
echo "$newname_path"
mv $Spk $newname_path
done
