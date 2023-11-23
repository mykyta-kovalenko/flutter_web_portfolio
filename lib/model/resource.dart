// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../enums/resource_category.dart';

class Resource extends Equatable {
  final String name;
  final String url;
  final ResourceCategory resourceCategory;
  final String? description;

  const Resource({
    required this.name,
    required this.url,
    required this.resourceCategory,
    this.description,
  });

  Resource copyWith({
    String? name,
    String? url,
    ResourceCategory? resourceCategory,
    String? description,
  }) {
    return Resource(
      name: name ?? this.name,
      url: url ?? this.url,
      resourceCategory: resourceCategory ?? this.resourceCategory,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      url,
      resourceCategory,
      description,
    ];
  }
}
