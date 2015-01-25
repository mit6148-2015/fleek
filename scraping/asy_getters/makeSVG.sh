#!/bin/sh

for f in ./asyfiles/*.asy
do
tag="$(basename $f .asy)"
echo $tag
/usr/local/bin/asy ./asyfiles/$tag.asy -o ../../public/assets/img/$tag.svg
done
