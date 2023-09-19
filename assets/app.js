import { registerVueControllerComponents } from '@symfony/ux-vue';
import './bootstrap.js';
import {createApp} from 'vue';
createApp();
registerVueControllerComponents(require.context('./vue/controllers', true, /\.vue$/));