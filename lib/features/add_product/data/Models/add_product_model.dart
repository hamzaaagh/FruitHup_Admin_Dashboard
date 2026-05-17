import 'package:fruithup_dashboard/features/add_product/domian/entities/add_product_entity.dart';

class AddProductModel extends AddProductEntity {
  AddProductModel({
    required super.name,
    required super.code,
    required super.price,
    required super.description,
    required super.isFeatured,
    required super.expirationMonths,
    required super.isOrganic,
    super.imageUrl,
    required super.numberOfCalories,
    required super.unitAmounts,
  });

  // تحويل الـ Entity إلى Model قبل الرفع للسيرفر
  factory AddProductModel.fromEntity(AddProductEntity entity) {
    return AddProductModel(
      name: entity.name,
      code: entity.code,
      price: entity.price,
      description: entity.description,
      isFeatured: entity.isFeatured,
      expirationMonths: entity.expirationMonths,
      isOrganic: entity.isOrganic,
      imageUrl: entity.imageUrl,
      numberOfCalories: entity.numberOfCalories,
      unitAmounts: entity.unitAmounts,
    );
  }

  
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "code": code,
      "price": price,
      "description": description,
      "isFeatured": isFeatured,
      "expirationMonths": expirationMonths,
      "isOrganic": isOrganic,
      "imageUrl": imageUrl, 
      "numberOfCalories": numberOfCalories,
      "unitAmounts": unitAmounts,
    };
  }
}
