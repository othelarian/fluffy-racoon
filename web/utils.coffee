export createElt = (tag, attrs, txt, html) ->
  elt = document.createElement tag
  afn = ([k, v]) -> elt.setAttribute(k, v)
  afn(attr) for attr in attrs
  if txt? then elt.innerText = txt
  else if html? then elt.innerHTML = html
  elt

#
#

