import 'package:injectable/injectable.dart';

import '../../model/handled_error.dart';
import '../../services/resources_service.dart';
import '../core/base_cubit.dart';
import 'resources_page_state.dart';

@injectable
class ResourcesPageCubit extends BaseCubit<ResourcesPageState> {
  final ResourcesService _resourcesService;

  ResourcesPageCubit(
    this._resourcesService,
  ) : super(const ResourcesPageState()) {
    _getResources();
  }

  @override
  void handleError(HandledError error) {
    emit(state.copyWith(
      error: error,
      status: ResourcesPageStatus.error,
    ));
  }

  Future<void> _getResources() async {
    await makeErrorHandledCall(() async {
      emit(state.copyWith(
        resources: _resourcesService.getResources(),
        status: ResourcesPageStatus.success,
      ));
    });
  }
}
