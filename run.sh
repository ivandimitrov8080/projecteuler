#!/usr/bin/env bash

lang_dirs=("haskell")

git_clean() {
	git add . > /dev/null 2>&1
	git reset --hard > /dev/null 2>&1
}

execute() {
	runghc "$1"
}

for lang in "${lang_dirs[@]}"
do
	for f in ./"$lang"/*
	do
		execute "$f"
	done
done

