'use strict';

const measurementId = String(hexo.config.google_analytics || '').trim();

if (measurementId && hexo.env.cmd !== 'server') {
  if (!/^G-[A-Z0-9]+$/.test(measurementId)) {
    throw new Error('google_analytics must be a GA4 measurement ID starting with G-.');
  }

  hexo.extend.injector.register('head_begin', `
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=${measurementId}"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', '${measurementId}');
</script>
`);
}
