import 'package:equatable/equatable.dart';

class ProductCategory extends Equatable {
  final String title;
  final String slug;
  final String description;
  final ProductCategoryStatus status;

  const ProductCategory({
    required this.title,
    required this.slug,
    required this.description,
    required this.status,
  });

  @override
  List<Object> get props => [title, slug, description, status];
}

enum ProductCategoryStatus {
  scheduled,
  published,
  inactive;

  String toJson() => name;
  static ProductCategoryStatus fromJson(String json) => values.byName(json);
}
