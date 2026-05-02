import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/core/Functions/build_snackBar.dart';
import 'package:fruithup_dashboard/core/widgets/custom_button.dart';
import 'package:fruithup_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fruithup_dashboard/features/add_product/presentation/Views/Widgets/add_image_item.dart';
import 'package:fruithup_dashboard/features/add_product/presentation/Views/Widgets/is_fetured_product.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<AddImageItemState> _imageKey = GlobalKey<AddImageItemState>();
  late String name, code, description;
  late double price;
  late File? image;
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
              CustomTextFormField(
                hintText: "Product Name",
                onSaved: (value) {
                  name = value!;
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Product Price",
                isnumber: true,
                onSaved: (value) {
                  price = double.parse(value!);
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Product Code",
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Product Description",
                mxlines: 5,
                onSaved: (value) {
                  description = value!;
                },
              ),
              const SizedBox(height: 16),
              IsFeturedProduct(onChanged: (value) {}),
              const SizedBox(height: 16),
              AddImageItem(
                key: _imageKey,
                onImageSelected: (imageFile) {
                  image = imageFile;
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                title: "Add Product ",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Check if image is selected
                    if (!_imageKey.currentState!.isImageSelected()) {
                      buildSnackBar(context, "Please select an image");
                      return;
                    }
                    _formKey.currentState!.save();
                    // Your code here after validation passes
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
