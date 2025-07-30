#!/bin/bash
COUNT=$(wc -l < ~/notes/todo.txt)
TODOS=$(cat ~/notes/todo.txt | head -c -1 - | sed -z 's/\n/\\n/g')
printf '{"text": "%s", "tooltip": "%s"}\n' "$COUNT" "$TODOS"