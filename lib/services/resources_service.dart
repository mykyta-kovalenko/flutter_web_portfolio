import 'package:injectable/injectable.dart';

import '../mock/resources.dart';
import '../model/resource.dart';

@injectable
class ResourcesService {
  List<Resource> getResources() {
    return getResourcesData();
  }
}
