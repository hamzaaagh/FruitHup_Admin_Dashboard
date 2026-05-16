import 'dart:io';

class AddProductEntity {
  final String name;
  final String code;
  final num price;
  final File image;
  final String descreption;
  final bool isFeatured;
  final String? imageUrl;

  AddProductEntity({required this.isFeatured, required this.name, required this.code, required this.price, required this.image, required this.descreption,  this.imageUrl});
}
