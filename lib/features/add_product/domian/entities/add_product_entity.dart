import 'dart:io';

class AddProductEntity {
  final String name;
  final String code;
  final num price;
  final File? image; 
  final String description;
  final bool isFeatured;
  final String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmounts;

  AddProductEntity({
    required this.name,
    required this.code,
    required this.price,
    this.image,
    required this.description,
    required this.isFeatured,
    this.imageUrl,
    required this.expirationMonths,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitAmounts,
  });
}