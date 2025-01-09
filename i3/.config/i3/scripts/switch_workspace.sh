#!/bin/bash

direction=$1

# Получить текущий рабочий стол
current_workspace=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused).name')

# Получить список рабочих столов
workspaces=($(i3-msg -t get_workspaces | jq -r '.[].name'))

# Найти индекс текущего рабочего стола в списке
for i in "${!workspaces[@]}"; do
	if [[ "${workspaces[i]}" == "$current_workspace" ]]; then
		current_index=$i
		break
	fi
done

# Рассчитать индекс следующего или предыдущего рабочего стола
if [[ "$direction" == "next" ]]; then
	target_index=$(((current_index + 1) % ${#workspaces[@]}))
elif [[ "$direction" == "prev" ]]; then
	target_index=$(((current_index - 1 + ${#workspaces[@]}) % ${#workspaces[@]}))
fi

# Переключиться на целевой рабочий стол
i3-msg workspace "${workspaces[target_index]}"
