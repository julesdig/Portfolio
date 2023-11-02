import { registerVueControllerComponents } from '@symfony/ux-vue';
import  i18n  from './i118n.js';
import vuetify from './vuetify.js';
registerVueControllerComponents(require.context('./vue/controllers', true, /\.vue$/));
// assets/app.js
document.addEventListener('vue:before-mount', (event) => {
    const { app} = event.detail;
    app.use(i18n);
    app.use(vuetify);
});

import './bootstrap.js';