import { createI18n } from 'vue-i18n';
const i18n = createI18n({
  locale: 'fr',
  fallbackLocale: 'en',
  globalInjection: true,
  legacy: false,
  messages: {
    fr: require('./translations/messages.fr.json'),
    en: require('./translations/messages.en.json')
  }
});

const $t = i18n.global.t;
export { $t };
