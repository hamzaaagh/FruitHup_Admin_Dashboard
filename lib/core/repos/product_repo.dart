import 'package:fruithup_dashboard/features/add_product/domian/entities/add_product_entity.dart';

abstract class ProductRepo {
  Future<void> addProduct(AddProductEntity product);
}