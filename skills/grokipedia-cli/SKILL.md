---
name: grokipedia-cli
description: Query Grokipedia knowledge base using the grokipedia CLI. Use when working with knowledge articles, documentation search, wiki content, or when the user mentions Grokipedia, knowledge base, wiki search, or grokipedia.
---

# Grokipedia CLI

Query the public Grokipedia site with the `grokipedia` command-line tool.

## Prerequisites

```bash
grokipedia version
grokipedia doctor
```

Reading and searching do not require an API key. The site is unofficial and
its public endpoints can change without a CLI release.

## Articles and content

### Search

```bash
grokipedia search "machine learning" --limit 20
grokipedia search "machine learning" --format json
grokipedia typeahead "machine" --limit 5
```

Search and typeahead use Grokipedia's live `query` parameter and tolerate
string-valued view counts in the response.

### Read pages

```bash
grokipedia page Python_programming_language
grokipedia page Python_programming_language --content
grokipedia preview Python_programming_language
grokipedia links Python_programming_language --internal
grokipedia tts Python_programming_language
```

The CLI uses the live `/api/page-preview` endpoint and falls back to the old
`/api/page` endpoint for older compatible deployments.

### Browse and inspect

```bash
grokipedia list --limit 20 --offset 0
grokipedia list --category Physics --format json
grokipedia stats
grokipedia random --format plain
```

### Edit history

```bash
grokipedia edits-by-slug Python_programming_language --limit 20
grokipedia edits-by-slug Python_programming_language --format json
```

Use per-article history when the global `edits` feed is unavailable.

## Contributions

The live site requires a signed-in xAI account for contribution requests. The
CLI can prepare requests, but it does not manage browser authentication; use
the web UI when a sign-in is required.

```bash
grokipedia suggest "Quantum error correction" --description "Why it matters"
grokipedia edit Python_programming_language --summary "Correct a date" \
  --original-content "old text" --proposed-content "new text" \
  --evidence "https://example.com/source"
```

## Output and configuration

- `search`, `page`, `preview`, and `list` support table/markdown/JSON output as
  documented by `grokipedia <command> --help`.
- Use `--no-cache` when testing a newly deployed site response.
- Set `GROKIPEDIA_API_URL` to target a compatible alternate deployment.
- `grokipedia check-updates` checks the independent CLI release, not the
  Grokipedia web version.

## v0.2 announcement note

The September 22, 2026 Grokipedia v0.2 post previews a redesigned web
homepage. It is not a CLI v0.2 release and does not publish a new API contract.
The CLI should be updated when live endpoint behavior changes, not merely when
the web version label changes.
