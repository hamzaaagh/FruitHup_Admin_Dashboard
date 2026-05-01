 import 'package:flutter/material.dart';

void buildSnackBar(BuildContext context,String message) {

    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }