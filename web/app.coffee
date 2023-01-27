import {store} from './store.coffee'

game =
  #
  # TODO
  #
  #
  testa: -> console.log 'plop'
  #


init = ->
  if navigator.serviceWorker?
    navigator.serviceWorker.register 'sw.js', {scope: '/fluffy-racoon/'}
  #
  #
  # TODO
  #
  console.log store.blob
  console.log 'not ready'
  #


window.game = game
window.init = init
window.store = store
