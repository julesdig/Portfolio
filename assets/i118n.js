import { createI18n } from 'vue-i18n/dist/vue-i18n.esm-bundler.js';
function loadLocaleMessages() {
  const locales = require.context('./translations', true, /messages\.[A-Za-z0-9-_,\s]+\.json$/i);
  const messages = {};
  locales.keys().forEach(key => {
    const matched = key.match(/messages\.([A-Za-z0-9-_]+)\./i);
    if (matched && matched.length > 1) {
      const locale = matched[1];
      messages[locale] = locales(key);
    }
  });
  return messages;
}
const i18n = createI18n({
  locale: 'fr',
  fallbackLocale: 'en',
  messages: loadLocaleMessages(),
  __dangerouslyDisableHtml: false,
  runtimeOnly: false,
  allowHTMLMessage: true,
  legacy: false,
  allowComposition: true,
  globalInjection: true,
});
export default i18n;
