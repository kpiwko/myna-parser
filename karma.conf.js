/* eslint-env node */

module.exports = function (config) {
  config.set({
    browsers: [
      'FirefoxHeadless',
      // Consider Chromium and Google Chrome to be similar enough.
      // Pick whichever is most likely to be locally installed and kept up-to-date
      // (Chromium on Linux, Chrome on macOS/Windows).
      // You can override this via CHROME_BIN or CHROMIUM_BIN.
      // For example, if your OS defaults to Chrome but you prefer Chromium,
      // then set something like CHROME_BIN=/usr/bin/chromium.
      //(process.platform === 'linux') ? 'ChromiumHeadless' : 'ChromeHeadless'
    ],
    frameworks: ['qunit'],
    files: [
      { pattern: 'grammars/*.js', watched: true, included: true, served: true },
      { pattern: '*.js', watched: true, included: true, served: true },
      'tests/*.js'
    ],
    basePath: './',
    urlRoot: '/_karma_/',
    customContextFile: 'tests/qunit.html',
    autoWatch: false,
    singleRun: true,
    reporters: ['dots'],
    proxies: {
      '/grammars/': '../grammars/',
      '/': '../'
    }
  });
};
