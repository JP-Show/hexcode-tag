#!/bin/bash

# uso: ./HexToDec.sh entrada.txt saida.txt

entrada="$1"
saida="$2"

> "$saida"

while IFS= read -r hex; do
  [[ -z "$hex" ]] && continue
  echo "$((16#$hex))" >> "$saida"
done < "$entrada"
