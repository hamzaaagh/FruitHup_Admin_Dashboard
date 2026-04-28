import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/core/widgets/custom_text_form_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            children: [
              CustomTextFormField(hintText: "Product Name"),
              const SizedBox(height: 16),
              CustomTextFormField(hintText: "Product Price", isnumber: true),
              const SizedBox(height: 16),
              CustomTextFormField(hintText: "Product Code", isnumber: true),
              const SizedBox(height: 16),
              CustomTextFormField(hintText: "Product Description", mxlines: 5),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
