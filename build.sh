#!/usr/bin/env bash

out_dir="./out"

lang_dirs=("haskell")


i=0
for dir in "${lang_dirs[@]}"
do
	res_dir="${out_dir/asd}"
	mkdir -p "$res_dir"
	for f in ./"$dir"/*
	do
		out_file="./$res_dir/pe$i"
		i=$((i + 1))
		ghc "$f" -o "$out_file"
		"$out_file"
	done
done

