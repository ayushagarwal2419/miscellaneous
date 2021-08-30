#!/bin/bash

folder=/home/speech/Documents/Speech/ASV/LibreTTS/dev-other/LibriSpeech/dev-other/

for file in $(find "$folder" -type f -iname "*.flac")
do
    name=$(basename "$file" .flac)
    dir=$(dirname "$file")
    echo ffmpeg -i "$file" "$dir"/"$name".wav
    ffmpeg -i $file $dir/$name.wav
    rm $file
done
