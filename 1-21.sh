#!/bin/bash

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Этот скрипт генерирует случайный инвентарь для игрока."
    echo "Использование: ./1-21.sh [-h | --help]"
    exit   0
fi

if [[ ! -f "items.txt" || ! -f "properties.txt" ]]; then
    echo "Ошибка: Файлы items.txt и properties.txt должны находиться в той же директории, что и этот скрипт."
    exit  1
fi

echo "Инвентарь:"
for i in $(seq   1   5)
do
  item=$(shuf -n   1 "items.txt")
  property=$(shuf -n   1 "properties.txt")

  echo "$i. $item $property"
done

exit 0