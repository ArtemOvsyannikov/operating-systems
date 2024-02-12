#!/bin/bash

chmod +x ./1-21.sh

echo -e "шлем\nнагрудник\nпоножи\nботинки\nмеч\nтопор\nлук\nарбалет\nпосох\nкопьё" > items.txt
echo -e "огня\nводы\nсвета\nветра\nтьмы\nземли\nвсевластия\nльда\nмолнии\nбесконечности" > properties.txt

echo "Инвентарь:"
for i in $(seq 1 5)
do
  item=$(shuf -n 1 "./items.txt")
  property=$(shuf -n 1 "./properties.txt")

  echo "$i. $item $property"
done
