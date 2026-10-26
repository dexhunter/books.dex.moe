How to run?

```bash
npm i
git submodule init
git submodule update
# modify whatever you want
make deploy
```

How to make new post?


``` bash
hexo new post <title>
``` 

Update:
Automated the process via Github Actions

## Google Analytics

In Google Analytics, open **Admin → Data streams**, select the web stream for
`books.dex.moe`, and copy its measurement ID. Set it in `_config.yml`:

```yaml
google_analytics: 'G-YOURMEASUREMENTID'
```

Run `npm run build` and deploy as usual. The project script adds the Google tag
to every generated HTML page, independently of the theme. A blank ID disables
tracking, and `npm run server` skips tracking for local development.

After deployment, visit the site and check Analytics Realtime or
[Google Tag Assistant](https://tagassistant.google.com/) to verify collection.

## Translations (原 / EN / 中 toggle)

Each post can show as written, fully in English, or fully in Chinese. Translations
are stored next to the posts, using the same file name as the post:

```
source/_translations/en/<post-file>.md   # English version
source/_translations/zh/<post-file>.md   # Chinese version
```

Each file has only a `title` in the front matter, followed by the translated
markdown body. Skip a language when the post is already written in it; a missing
file falls back to the original. The theme (`themes/polk-x/scripts/i18n.js`)
reads these files when generating pages.
