#!/bin/bash

N=1
dir=$1

for file in $dir/*
do
	convert "$file" -resize 600x400 "$file"
	mv "$file" "$dir/image$N.jpg"
	let N=N+1
done
