const Encore = require('@symfony/webpack-encore');
const webpack = require('webpack');

// Manually configure the runtime environment if not already configured yet by the "encore" command.
// It's useful when you use tools that rely on webpack.config.js file.
if (!Encore.isRuntimeEnvironmentConfigured()) {
    Encore.configureRuntimeEnvironment(process.env.NODE_ENV || 'dev');
}

Encore
    .setOutputPath('public/build/')
    .setPublicPath('/build')
    .addEntry('app', './assets/app.js')
    .enableVueLoader(() => {},{
        version: 3
    })
    .splitEntryChunks()
    .enableVueLoader(() => {}, { runtimeCompilerBuild: false })
    .enableStimulusBridge('./assets/controllers.json')
    .enableSassLoader()
    .enableSingleRuntimeChunk()
    .cleanupOutputBeforeBuild()
    .enableBuildNotifications()
    .enableSourceMaps(!Encore.isProduction())
    .enableVersioning(Encore.isProduction())
    .configureBabelPresetEnv((config) => {
        config.useBuiltIns = 'usage';
        config.corejs = '3.23';
    })
    .configureDefinePlugin((options) => {
        options['__VUE_OPTIONS_API__'] = true;
        options['__VUE_PROD_DEVTOOLS__'] = false;
    })
;

module.exports = Encore.getWebpackConfig();
