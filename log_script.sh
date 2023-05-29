#!/bin/bash

gotta_catch_em_all() {
  local log_file="$1"
  local total_entries=$(wc -l < "$log_file")
  echo "$total_entries"
}

who_popped_in_most() {
  local log_file="$1"
  read -p "How many top visitors do you want to see? " count
  awk '{print $4}' "$log_file" | sort | uniq -c | sort -nr | head -n "$count"
}

detective_on_the_case() {
  local log_file="$1"
  read -p "Give me a clue (keyword or pattern) to search for: " keyword
  grep -i "$keyword" "$log_file"
}

time_travel_logs() {
  local log_file="$1"
  read -p "When do we start (YYYY-MM-DD HH:MM:SS)? " start_date
  read -p "And when do we stop (YYYY-MM-DD HH:MM:SS)? " end_date
  awk -v start="$start_date" -v end="$end_date" '$0 >= start && $0 <= end' "$log_file"
}

the_scoop() {
  local log_file="$1"
  awk '{print substr($4, 1, 13)}' "$log_file" | sort | uniq -c
  awk '{print $6}' "$log_file" | sort | uniq -c
}

tail_the_tale() {
  local log_file="$1"
  tail -f "$log_file"
}

sort_by_vibe() {
  local log_file="$1"
  read -p "Which vibe (log level) do you want to see (INFO, ERROR, WARNING, DEBUG)? " vibe
  grep -i "$vibe" "$log_file"
}

keyword_frequency() {
  local log_file="$1"
  read -p "Which keyword's frequency are you interested in? " keyword
  grep -o "$keyword" "$log_file" | wc -l
}

read -p "Show me where the logs are (file path): " log_file

if [ ! -r "$log_file" ]; then
  echo "File can't be read or doesn't exist."
  exit 1
fi

while true; do
  echo "1. How many logs we got?"
  echo "2. Who visited most?"
  echo "3. Detective mode: search for a keyword"
  echo "4. Time travel: check logs from a specific time"
  echo "5. Detective's report: get the scoop on the log file"
  echo "6. Tail the logs in real time"
  echo "7. Sort entries by vibe (log level)"
  echo "8. Count the frequency of a keyword"
  echo "9. Get me outta here!"
  read -p "What do you fancy (1-9)? " choice

  case $choice in
    1) gotta_catch_em_all "$log_file";;
    2) who_popped_in_most "$log_file";;
    3) detective_on_the_case "$log_file";;
    4) time_travel_logs "$log_file";;
    5) the_scoop "$log_file";;
    6) tail_the_tale "$log_file";;
    7) sort_by_vibe "$log_file";;
    8) keyword_frequency "$log_file";;
    9) exit;;
    *) echo "That choice doesn't compute. Try again, buddy.";;
  esac
done
