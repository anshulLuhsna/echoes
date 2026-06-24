# echoes

Daily handwritten learning notes.

This repo is for learning in public and keeping proof of the work:

- what I learned
- what I built
- what confused me
- what I can explain now
- what I tweeted

The current focus is voice AI: speech models, voice infrastructure, evaluation, and production readiness.

## Rule

Write first. Polish later.

Every day should leave at least one small trace:

- a learning note
- a code note
- a self-test answer
- a tweet draft
- a failure note

See [OPERATING.md](OPERATING.md) for the handwritten-first rules.

## Structure

```text
daily/
  YYYY/
    MM/
      YYYY-MM-DD-topic.md
tweets/
  YYYY/
    MM/
      YYYY-MM-DD.md
weekly/
  YYYY/
    week-XX.md
templates/
scripts/
```

## Daily Flow

1. Learn one concrete thing.
2. Write the note by hand.
3. Answer one recall question.
4. Draft one tweet.
5. Commit the trace.

Before publishing, use [templates/daily-publish-checklist.md](templates/daily-publish-checklist.md).

For the daily git loop, use [COMMANDS.md](COMMANDS.md).

To create today's note and tweet draft:

```bash
./scripts/new-day.sh audio-sampling
```

## Current Learning Arc

```text
audio fundamentals
-> ASR and TTS models
-> evaluation
-> streaming and serving
-> MLOps and production reliability
```
