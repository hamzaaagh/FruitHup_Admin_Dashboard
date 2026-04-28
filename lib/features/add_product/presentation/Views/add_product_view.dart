import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/features/add_product/presentation/Views/Widgets/add_product_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const String routeName = 'add_product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text('Add Product')),
      body: AddProductViewBody(),
    );
  }
}
