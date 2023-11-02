import { registerVueControllerComponents } from '@symfony/ux-vue';
import  i18n  from './i118n.js';
import vuetify from './vuetify.js';

registerVueControllerComponents(require.context('./vue/controllers', true, /\.vue$/));
// assets/app.js
document.addEventListener('vue:before-mount', (event) => {
    const {
        componentName, // The Vue component's name
        component, // The resolved Vue component
        props, // The props that will be injected to the component
        app, // The Vue application instance
    } = event.detail;
    app.use(i18n);
    app.use(vuetify);
    
});

import './bootstrap.js';