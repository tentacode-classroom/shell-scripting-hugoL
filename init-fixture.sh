#!/bin/bash

rm -Rf ./fixtures

mkdir -p ./fixtures/images ./fixtures/html ./fixtures/bazar

wget https://twitter.com/ \
     https://media.melty.fr/article-3817747-thumb-f8/the-walking-dead-saison-9-episode-7-ce-soir.jpg \
      -q -P ./fixtures/bazar

du -a ./fixtures

