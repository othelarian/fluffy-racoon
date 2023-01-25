const CACHE_NAME = 'fluffy-racoon-cache'
const OFFLINE_URL = '/fluffy-racoon/index.html'

self.addEventListener 'install', (evt) !~>
  evt.waitUntil(( !~>>
    cache = await caches.open CACHE_NAME
    cache.add(new Request OFFLINE_URL, {cache: 'reload'})
  )())

self.addEventListener 'activate', (evt) !~>
  evt.waitUntil(( !~>>
    if self.registration.navigationPreload?
      t = await self.registration.navigationPreload.enable!
  )())
  self.clients.claim!

self.addEventListener 'fetch', (evt) !~>
  void
