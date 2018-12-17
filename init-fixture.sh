#!/bin/bash

rm -Rf ./fixtures

mkdir -p ./fixtures/images ./fixtures/html ./fixtures/bazar ./fixtures/videos
mkdir -p  ~/Scripts/fixtures/bazar/12

wget https://filmpipeline.com/wp-content/uploads/sites/6/2017/08/ShortScriptContestIcon.png -q -O ./fixtures/bazar/images/picture.jpg
wget https://twitter.com/ \
     https://media.melty.fr/article-3817747-thumb-f8/the-walking-dead-saison-9-episode-7-ce-soir.jpg \
      -q -P ./fixtures/bazar

echo "Hello World, my script is ok, i'm really happy !"			 > ./fixtures/success.txt
echo "Continue the end is not far away." 				 >> ./fixtures/success.txt

touch ./fixtures/videos/video.mp4

du -a ./fixtures
