icndir = 'icons'
pwapath = 'pwa'
webpath = 'web'

nodepack = require './package.json'

exports.cfg =
  dest_path:
    debug: 'dist'
    release: 'out'
    github: 'docs'
  icon:
    dir: icndir
    src: ["#{pwapath}/icon.pug"]
    out: "#{icndir}/icon.svg"
  itch:
    zipname: "./fluffy-racoon_v#{nodepack.version.replaceAll '.', '-'}.zip"
  pwa:
    background_color: '#fff'
    description: 'a grid and card based game'
    display: 'standalone'
    icon_sizes: [128, 192, 256, 512]
    icon_mask: [false, false, true, true]
    icon_svg: '72x72 96x96 1024x1024'
    lang: 'en'
    name: 'fluffy-racoon'
    path: pwapath
    service_init: {src: "#{pwapath}/swinit.ls", out: 'swinit.js'}
    service_worker: {src: "#{pwapath}/sw.ls", out: 'sw.js'}
    'short-name': 'fluffy-racoon'
    start_url: 'index.html'
    theme_color: '#fff'
    scope: '/fluffy-racoon/'
  static: 'static'
  version: nodepack.version
  web:
    html:
      src: ("#{webpath}/#{file}" for file in ['index.pug'])
      out: 'index.html'
    path: webpath
    sass:
      src: "#{webpath}/style.sass"
      out: 'style.css'
    coffee:
      src: "#{webpath}/app.coffee"
      out: 'app.js'
