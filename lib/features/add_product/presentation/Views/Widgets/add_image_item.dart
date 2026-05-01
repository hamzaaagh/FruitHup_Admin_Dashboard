import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImageItem extends StatefulWidget {
  const AddImageItem({super.key});

  @override
  State<AddImageItem> createState() => AddImageItemState();
}

class AddImageItemState extends State<AddImageItem> {
  File? _selectedImage; // المتغير الذي سيخزن الصورة
  final ImagePicker _picker = ImagePicker();
  // دالة لاختيار الصورة
  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: source,
      imageQuality: 80, // لتقليل حجم الصورة قبل الرفع
    );
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  // Method to check if image is selected
  bool isImageSelected() {
    return _selectedImage != null;
  }

  // Method to get the selected image
  File? getSelectedImage() {
    return _selectedImage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                _pickImage(ImageSource.gallery);
              },
              child: Container(
                height: _selectedImage != null ? null : 150,
                width: double.infinity,
                constraints: BoxConstraints(minHeight: 150),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _selectedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          _selectedImage!,
                          fit: BoxFit.contain,
                          width: double.infinity,
                        ),
                      )
                    : SizedBox(height: 150, child: Icon(Icons.image, size: 80)),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Visibility(
                visible: _selectedImage != null,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedImage = null;
                    });
                  },
                  child: Icon(
                    Icons.highlight_remove_outlined,
                    size: 24,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
