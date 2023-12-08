import 'package:f_provider_project/core/function/navigation.dart';
import 'package:f_provider_project/core/theming/styles.dart';
import 'package:f_provider_project/core/widgets/custom_button.dart';
import 'package:f_provider_project/features/register/data/model/register_model.dart';
import 'package:f_provider_project/features/register/presentation/views/widgets/email_and_name_text_field_sec.dart.dart';
import 'package:f_provider_project/features/register/presentation/views/widgets/image_picker_sec.dart';
import 'package:f_provider_project/features/register/presentation/views/widgets/password_and_phone_text_field_sec.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/presentation/views/welcome_and_quantity_count_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var passController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var userProvider = Provider.of<UserModel>(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyles.font22BlueBold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ImagePickerSec(
                    userProvider: userProvider,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  EmailAndNameTextFieldSec(
                    nameController: nameController,
                    emailController: emailController,
                  ),
                  PasswordAndPhoneTextFieldSec(
                    passController: passController,
                    phoneController: phoneController,
                  ),
                  CustomButton(
                    buttonName: "Register",
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        await userProvider.setData(
                          name: nameController.text,
                          email: emailController.text,
                          password: passController.text,
                          phone: phoneController.text,
                        );
                        navigateAndFinish(
                            context, const WelcomeAndQuantityCountView());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
