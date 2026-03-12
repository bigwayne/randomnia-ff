# Randomnia

A white-label static YouTube playlist randomizer. Deploy to GitHub Pages with your own branding and playlists.

## Setup

```bash
git clone <repo>
cd randomnia
chmod +x init.sh
./init.sh
```

Edit `config.json` with your settings, then deploy.

## Config

| Field | Description |
|---|---|
| `title` | Site name (header + browser tab) |
| `description` | Blurb shown below header |
| `logo` | Path to logo image (optional) |
| `youtubeApiKey` | YouTube Data API v3 key (required) |
| `author.name` | Your name (footer) |
| `author.url` | Your URL (footer link) |
| `colors.*` | CSS colors: `primary`, `secondary`, `background`, `text`, `accent` |
| `playlists` | Array of `{ "id": "...", "name": "..." }` |

## YouTube API Key

1. [Google Cloud Console](https://console.cloud.google.com) → new project → enable **YouTube Data API v3**
2. Create an API key, restrict it to your GitHub Pages domain and/or to the YouTube Data API v3 API 
3. Paste into `config.json` as `youtubeApiKey`

## Deploy to GitHub Pages

Push to GitHub → Settings → Pages → branch `master`, root `/`.

Add your `*.github.io` domain to the API key's HTTP referrer restrictions. Keep `config.json` in `.gitignore` to protect your key.

## Storage (localStorage)

- `videos_{id}` — cached video list per playlist
- `seen_{id}` — watched video IDs per playlist (cleared when unchecking a playlist)
- `history` — rolling watch log, max 200 entries

## Examples

```json
{ "title": "Sleepy Crime", "colors": { "accent": "#e94560" } }
{ "title": "Ghost Radio",  "colors": { "accent": "#7c3aed" } }
{ "title": "Dev Queue",    "colors": { "accent": "#3b82f6" } }
```
