#!/bin/bash

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Этот скрипт генерирует случайный инвентарь для игрока."
    echo "В качестве входных данных используются следующие файлы: items.txt(назв-я предметов), properties.txt(назв-я свойств)."
    echo "Использование: ./1-21.sh [-h | --help]"
    exit  0
fi

echo "Инвентарь:"
for i in $(seq  1  5)
do
  item=$(shuf -n  1 "./items.txt")
  property=$(shuf -n  1 "./properties.txt")

  echo "$i. $item $property"
done

exit  0