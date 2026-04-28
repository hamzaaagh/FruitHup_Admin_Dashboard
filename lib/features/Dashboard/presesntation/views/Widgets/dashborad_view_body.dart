import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/core/widgets/custom_button.dart';
import 'package:fruithup_dashboard/features/add_product/presentation/Views/add_product_view.dart';
import 'package:go_router/go_router.dart';

class DashboradViewBody extends StatelessWidget {
  const DashboradViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to the Dashboard',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomButton(
            title: "Add Data",
            onPressed: () {
              context.push('/${AddProductView.routeName}');
            },
          ),
        ),
      ],
    );
  }
}
