# daily commands

Run these from `/Users/froncort.ai/Desktop/voice-ai/echoes`.

## Check Identity

```bash
git config --local --get user.name
git config --local --get user.email
git remote -v
```

Expected:

```text
anshulLuhsna
anshulkalbande@gmail.com
git@github.com-personal:anshulLuhsna/echoes.git
```

## Create Today's Files

Preferred:

```bash
./scripts/new-day.sh audio-sampling
```

Manual version:

```bash
DAY=$(date +%F)
YEAR=$(date +%Y)
MONTH=$(date +%m)
TOPIC=topic

mkdir -p "daily/$YEAR/$MONTH" "tweets/$YEAR/$MONTH"
cp templates/daily-learning-note.md "daily/$YEAR/$MONTH/$DAY-$TOPIC.md"
cp templates/tweet-draft.md "tweets/$YEAR/$MONTH/$DAY.md"
```

## Commit The Trace

```bash
git status --short
git add daily tweets weekly README.md OPERATING.md COMMANDS.md templates scripts
git commit -m "Add voice AI learning note"
git push
```

## If There Is Nothing Worth Committing

Do not fake it.

Write a restart note:

```text
I did not make real progress today. Tomorrow I restart with one 25-minute session on <topic>.
```

Then commit that. Honesty keeps the streak useful.

## Good Commit Messages

```text
Add note on audio sampling
Add STFT learning note
Draft tweet on VAD failures
Log weekly voice AI recap
```
