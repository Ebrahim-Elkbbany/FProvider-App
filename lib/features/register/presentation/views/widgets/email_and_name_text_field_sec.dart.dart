import 'package:f_provider_project/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailAndNameTextFieldSec extends StatelessWidget {
  const EmailAndNameTextFieldSec({
    super.key,
    required this.nameController,
    required this.emailController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CustomTextFormField(
          controller: nameController,
          labelText: 'Name',
          prefixIcon: Icons.person,
          keyboardType: TextInputType.name,
          validate: (value) {
            if (value.isEmpty) {
              return ('Name required');
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          controller: emailController,
          labelText: 'Email Address',
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
          validate: (value) {
            if (value.isEmpty) {
              return ('Email required');
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
