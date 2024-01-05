import 'package:equatable/equatable.dart';
import 'package:vuexy_flutter/domain/core/models/product_category.dart';

class Product extends Equatable {
  final String name;
  final int stockKeepingUnits;
  final String? description;
  final double basePrice;
  final bool isInStock;
  final bool chargeTax;
  final double discountedPrice;
  final List<String> tags;
  final ProductCategory category;

  const Product({
    required this.name,
    required this.stockKeepingUnits,
    required this.description,
    required this.basePrice,
    required this.isInStock,
    required this.chargeTax,
    required this.discountedPrice,
    required this.tags,
    required this.category,
  });

  @override
  List<Object?> get props {
    return [
      name,
      stockKeepingUnits,
      description,
      basePrice,
      isInStock,
      chargeTax,
      discountedPrice,
      tags,
      category,
    ];
  }
}
