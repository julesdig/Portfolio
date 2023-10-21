import { registerVueControllerComponents } from '@symfony/ux-vue';
import './bootstrap.js';
registerVueControllerComponents(require.context('./vue/controllers', true, /\.vue$/));