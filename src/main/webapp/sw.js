const CACHE_NAME = 'uamsat-v1';
const URLS_TO_CACHE = [
  '/',
  '/index.jsp',
  '/about.jsp',
  '/formations.jsp',
  '/admission.jsp',
  '/quiz.jsp',
  '/contact.jsp',
  '/style.css',
  '/script.js',
  '/manifest.webmanifest',
  '/assets/img/logo-uamsat.png'
];

self.addEventListener('install', function(event) {
  event.waitUntil(
    caches.open(CACHE_NAME).then(function(cache) {
      return cache.addAll(URLS_TO_CACHE);
    })
  );
});

self.addEventListener('fetch', function(event) {
  event.respondWith(
    caches.match(event.request).then(function(response) {
      return response || fetch(event.request);
    })
  );
});

self.addEventListener('activate', function(event) {
  event.waitUntil(
    caches.keys().then(function(cacheNames) {
      return Promise.all(
        cacheNames.map(function(cacheName) {
          if (cacheName !== CACHE_NAME) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});
