

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UserModel extends ChangeNotifier {
  String ?email;
  String? password;
  String? phone;
  String? name;

  setData({required String name,
  required String email,
    required String password,
    required  String phone,
  }){
    this.name = name;
    this.email = email;
    this.phone = phone;
    this.password = password;
    notifyListeners();
  }

  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;
      final imageTemp = File(image.path);
      this.image = imageTemp;
      notifyListeners();
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
      notifyListeners();
    }
  }
}