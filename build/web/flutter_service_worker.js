'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "74c02ae25a027fdb97702c7bbb620e33",
"index.html": "181b887b16c79d799db89a6b70625916",
"/": "181b887b16c79d799db89a6b70625916",
"main.dart.js": "7023657ba282c53adf1589b28042455c",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "d32a9e485f654f8353c310ea854fff3f",
"icons/icon-192.png": "c8b3769ea9bd617a2d362b257d9c9b9c",
"icons/icon-maskable-192.png": "c8b3769ea9bd617a2d362b257d9c9b9c",
"icons/icon-maskable-512.png": "4caebaaf77281048f1ae487805727d26",
"icons/icon-512.png": "4caebaaf77281048f1ae487805727d26",
"manifest.json": "e611106e9c1e33c788f56274b6bf45f2",
"assets/AssetManifest.json": "1b5df16633591a5045904ddd6231be08",
"assets/NOTICES": "c911379de4fc26cb320515b35caf5321",
"assets/FontManifest.json": "6bf336df0398e988fcea0edf135a0499",
"assets/AssetManifest.bin.json": "5d0b29ff8afc38c9602ffd8fceaa08ce",
"assets/packages/syncfusion_flutter_datagrid/assets/font/FilterIcon.ttf": "c17d858d09fb1c596ef0adbf08872086",
"assets/packages/syncfusion_flutter_datagrid/assets/font/UnsortIcon.ttf": "6d8ab59254a120b76bf53f167e809470",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "320787397b74b69081adf0b19f91899b",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/anastasiia.jpeg": "d32256ae825eb548449d5d2b229f3e5d",
"assets/assets/images/groovifi_5.jpg": "98bd74e3e48562d2f6c561f58e81af24",
"assets/assets/images/threewella_logo.png": "20b2c681785891b37b8c1a8aafdf3ab2",
"assets/assets/images/groovifi_4.jpg": "842b5bc00ffb03ef65eefe2c9566accd",
"assets/assets/images/bogdan.jpeg": "7addf076140493efafd795f90716ca55",
"assets/assets/images/groovifi_3.jpg": "fbc5bb08340ef058b8344e795d751b2e",
"assets/assets/images/IMG_4102.JPG": "9fa1be66f0fba1ac15d9bfbd2bd1871a",
"assets/assets/images/threewella_0.jpg": "c61888bee1baab875637f14e04709daa",
"assets/assets/images/threewella_1.jpg": "eb6ca5ca03b9b2a8001974d685250177",
"assets/assets/images/groovifi_2.jpg": "11304d3f685b81f6cb255dd460916a14",
"assets/assets/images/jiq_logo.png": "199346943aaa241b0e4098c768b66a07",
"assets/assets/images/groovifi_0.jpg": "d114e16fd41dbc5f5035668aa33d8923",
"assets/assets/images/threewella_3.jpg": "55ec134bbe39d6e26b0505233e62dc95",
"assets/assets/images/threewella_2.jpg": "8ea5bdbe05b64cbc3b14278a60302b56",
"assets/assets/images/groovifi_1.jpg": "edd99ec42522390db744b4fd6eeddd41",
"assets/assets/images/ff_2.jpg": "62b8c8f598c8fdcb8793356c97217df1",
"assets/assets/images/ff_3.jpg": "22bac7e7bf6cb5231fcc984632f1864b",
"assets/assets/images/ff_1.jpg": "0656edc6ec14dc3cdf1be43ebd2d5f7a",
"assets/assets/images/yaroslav.jpeg": "6f5f657b1c8203537f9e2ec29a0479ce",
"assets/assets/images/groovifi_logo.png": "7171565ffa7740883e6cc52b1bd24d86",
"assets/assets/images/ff_4.jpg": "a25b58e3ccd64e83c40c4820fdd71a19",
"assets/assets/images/ff_5.jpg": "03a5575a3d7a609351167957fa7c3e4e",
"assets/assets/images/ff_6.jpg": "5d52e4b8a645a16529829d2830c17626",
"assets/assets/images/jiq_2.jpg": "d4b76bcb3ffbec7a33078c1fa130abdf",
"assets/assets/images/ff_logo.png": "a03e9a4bc2d48885f23b394646c5f871",
"assets/assets/images/jiq_1.jpg": "d800a6f4e534cbfb86161f0c67a15265",
"assets/assets/images/jiq_0.jpg": "d92e408aee63ee3c52d79d83a3c5b299",
"assets/assets/images/oleksii.jpeg": "6e432fa4e8a84235bf9c2b8506b06f6d",
"assets/assets/images/ff_0.jpeg": "fdcd97a67648080dc569d7fb064990a8",
"assets/assets/mykyta_kovalenko_resume.pdf": "b7e49aacd9267bf41a26d152d15e7dca",
"assets/assets/icons/icons8-linkedin.svg": "d83aa12847d09e15c16414acf8c14371",
"assets/assets/icons/icons8-instagram.svg": "c06f4e917187128efb2a7f5213226c33",
"assets/assets/icons/icons8-app-store.svg": "4c3dbe5fb42c693587e0e49c728bccab",
"assets/assets/icons/icons8-github.svg": "4d56b3683c48ed7c70e76b81fb262a4a",
"assets/assets/icons/icons8-google-play.svg": "19d9058ac3d87ab175b8b8db5ff4c280",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
