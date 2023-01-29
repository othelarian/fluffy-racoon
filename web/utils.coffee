export createElt = (tag, attrs, txt, html) ->
  elt = document.createElement tag
  afn = ([k, v]) -> elt.setAttribute(k, v)
  afn(attr) for attr in attrs
  if txt? then elt.innerText = txt
  else if html? then elt.innerHTML = html
  elt

export LS =
  check: ->
    tryit = 'try_lstest'
    try
      localStorage.setItem tryit, tryit
      localStorage.getItem tryit
      localStorage.removeItem tryit
      true
    catch
      false
  del: (key) -> localStorage.removeItem "fluffy-#{key}"
  get: (key) -> localStorage.getItem "fluffy-#{key}"
  prop: (prop) -> localStorage.hasOwnProperty "fluffy-#{prop}"
  set: (key, value) -> localStorage.setItem "fluffy-#{key}", value

