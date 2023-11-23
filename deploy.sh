#!/bin/sh

flutter pub get

# https://github.com/flutter/flutter/issues/76009#issuecomment-781681343
# > Applications using --web-renderer=auto and --web-renderer=canvaskit will 
# > take longer to start on empty browser cache. This is expected. 
# > We plan an effort to optimize it, but for now it's a deliberate trade-off. 
# > If your application requires the fastest possible start-up on empty browser cache, 
# > consider using --web-renderer=html instead.
# > However, if subsequent app reloads are slow in any mode, please let us know.
# > For now, I'm going to treat this issue as a feature request to make CanvasKit initial start-up time faster.
#
# flutter build web --pwa-strategy=none --dart2js-optimization=O2 --web-renderer=canvaskit
flutter build web --pwa-strategy=none --dart2js-optimization=O2 --web-renderer=html --no-tree-shake-icons --release

firebase deploy --only hosting
