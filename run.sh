#!/usr/bin/env bash

out_dir="out"

lang_dirs=("haskell")

git_clean() {
	git add . > /dev/null 2>&1
	git reset --hard > /dev/null 2>&1
}

compile_file() {
	ghc "$1" -o "$2" > /dev/null 2>&1
}

execute() {
	"$1"
}

i=0
for lang in "${lang_dirs[@]}"
do
	res_dir="$out_dir/$lang"
	mkdir -p "$res_dir"
	git_clean
	for f in ./"$lang"/*
	do
		out_file="./$res_dir/pe$i"
		i=$((i + 1))
		compile_file "$f" "$out_file"
		echo "$out_file : "
		execute "$out_file"
	done
done
git_clean

