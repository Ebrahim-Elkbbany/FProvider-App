import 'package:f_provider_project/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordAndPhoneTextFieldSec extends StatelessWidget {
  const PasswordAndPhoneTextFieldSec({
    super.key,
    required this.passController,
    required this.phoneController,
  });

  final TextEditingController passController;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: passController,
          labelText: 'Password',
          prefixIcon: Icons.lock_outline_sharp,
          keyboardType: TextInputType.name,
          validate: (value) {
            if (value.isEmpty) {
              return ('Password required');
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          controller: phoneController,
          labelText: 'Phone',
          prefixIcon: Icons.phone,
          keyboardType: TextInputType.phone,
          validate: (value) {
            if (value.isEmpty) {
              return ('Phone reqiured');
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
