import {Store} from './store.coffee'
import * as U from './utils.coffee'

LS = U.LS

Fluffy =
  # attibutes
  # submodules
  store: Store
  # methods
  check: ->
    #
    # TODO
    #
    console.log 'on my way...'
    #
  #


initFluffy = ->
  if swinit? then swinit()
  #
  # TODO: test LS
  #
  #
  if LS.check()
    #
    if Fluffy.check()
      #
      console.log 'checking if the game already have data in it'
      #
    #
    console.log 'ls ok'
    #
  #
  #
  console.log store.blob
  console.log 'not ready'
  #

window.Fluffy = Fluffy
window.initFluffy = initFluffy
