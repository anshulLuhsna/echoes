#!/usr/bin/env bash
set -euo pipefail

topic="${1:-topic}"
topic="${topic// /-}"
topic="$(printf '%s' "$topic" | tr '[:upper:]' '[:lower:]')"

day="$(date +%F)"
year="$(date +%Y)"
month="$(date +%m)"

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

name="$(git config --local --get user.name || true)"
email="$(git config --local --get user.email || true)"
remote="$(git remote get-url origin || true)"

if [[ "$name" != "anshulLuhsna" || "$email" != "anshulkalbande@gmail.com" ]]; then
  echo "Local git identity is not the personal echoes identity."
  echo "Expected: anshulLuhsna <anshulkalbande@gmail.com>"
  echo "Actual:   ${name:-missing} <${email:-missing}>"
  exit 1
fi

if [[ "$remote" != "git@github.com-personal:anshulLuhsna/echoes.git" ]]; then
  echo "Origin is not using github.com-personal."
  echo "Actual origin: ${remote:-missing}"
  exit 1
fi

daily_dir="daily/$year/$month"
tweet_dir="tweets/$year/$month"
daily_file="$daily_dir/$day-$topic.md"
tweet_file="$tweet_dir/$day.md"

mkdir -p "$daily_dir" "$tweet_dir"

if [[ -e "$daily_file" ]]; then
  echo "Daily note already exists: $daily_file"
else
  cp templates/daily-learning-note.md "$daily_file"
  echo "Created daily note: $daily_file"
fi

if [[ -e "$tweet_file" ]]; then
  echo "Tweet draft already exists: $tweet_file"
else
  cp templates/tweet-draft.md "$tweet_file"
  echo "Created tweet draft: $tweet_file"
fi

echo
echo "Next:"
echo "1. Write the daily note by hand."
echo "2. Draft one honest tweet."
echo "3. Run: git status --short"
echo "4. Commit and push the trace."
