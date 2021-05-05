#!/bin/bash

set -o errexit
set -o nounset

cd "${0%/*}/.."

INDEX_FILE="INDEX.md"

echo "================================================================================"
echo "Checking folders in ${INDEX_FILE} exist"
echo "================================================================================"
FILES="$(cat ${INDEX_FILE} | grep '(' | grep ')' | sed 's/)/)\n/g;s/.*(\(.*\))/\1/' | grep '/')"
for file in $FILES
do
  ls -d "$file" >/dev/null
  echo "$file exists"
done

echo "================================================================================"
echo "Checking that every folder is mentioned in ${INDEX_FILE}"
echo "================================================================================"
TERRAFORM_FOLDERS="$(find . | grep tf$ | xargs -n1 dirname | sed 's/^.\///')"
for folder in $TERRAFORM_FOLDERS
do
  if grep "${folder}" ${INDEX_FILE} >/dev/null
  then
    echo "$folder mentioned in ${INDEX_FILE}"
  else
    echo "$folder not mentioned in ${INDEX_FILE}"
    exit 1
  fi
done