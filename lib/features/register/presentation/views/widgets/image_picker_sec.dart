import 'package:f_provider_project/features/register/data/model/register_model.dart';
import 'package:flutter/material.dart';

class ImagePickerSec extends StatelessWidget {
  const ImagePickerSec({super.key, required this.userProvider});
  final UserModel userProvider;

  @override
  Widget build(BuildContext context) {
    return     InkWell(
      onTap: () {
        userProvider.pickImage();
      },
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 50,
        child: userProvider.image!=null ? ClipRRect(
          borderRadius: BorderRadius.circular(90),
          child: Image.file(
            userProvider.image!,
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
        ): const Icon(Icons.camera_alt),
      ),
    );
  }
}
