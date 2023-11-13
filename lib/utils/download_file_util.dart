// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

void downloadFile(url) {
  AnchorElement anchorELement = AnchorElement(href: url);
  anchorELement.download = 'mykyta-kovalenko-resume';

  anchorELement.click();
}
