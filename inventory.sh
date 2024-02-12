#!/bin/bash

echo "Инвентарь:"
for i in $(seq 1 5)
do
  item=$(shuf -n 1 "./items.txt")
  property=$(shuf -n 1 "./properties.txt")

  echo "$i. $item $property"
done

