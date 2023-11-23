import 'package:equatable/equatable.dart';

import '../../model/handled_error.dart';
import '../../model/resource.dart';

enum ResourcesPageStatus {
  init,
  success,
  error,
}

class ResourcesPageState extends Equatable {
  final ResourcesPageStatus status;
  final List<Resource> resources;
  final HandledError error;

  const ResourcesPageState({
    this.status = ResourcesPageStatus.init,
    this.resources = const [],
    this.error = const HandledError.empty(),
  });

  ResourcesPageState copyWith({
    ResourcesPageStatus? status,
    List<Resource>? resources,
    HandledError? error,
  }) {
    return ResourcesPageState(
      status: status ?? this.status,
      resources: resources ?? this.resources,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      status,
      resources,
      error,
    ];
  }
}
