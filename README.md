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
