#!/bin/bash
COUNT=$(wc -l < ~/notes/todo.md)
TODOS=$(cat ~/notes/todo.md | head -c -1 - | sed -z 's/\n/\\n/g')
printf '{"text": "%s", "tooltip": "%s"}\n' "$COUNT" "$TODOS"