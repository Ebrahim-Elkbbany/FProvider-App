import 'package:f_provider_project/core/theming/styles.dart';
import 'package:f_provider_project/features/register/data/model/register_model.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/data/model/cart_quantity_model.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/presentation/views/widgets/details_and_count_count_sec.dart';
import 'package:flutter/material.dart';

class WelcomeAndQuantityCountViewBody extends StatelessWidget {
  const WelcomeAndQuantityCountViewBody(
      {super.key, required this.getUserData, required this.getQuantity});

  final UserModel getUserData;
  final CartModel getQuantity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: 'Welcome ',
                style: TextStyles.font20BlackBold,
                children: <TextSpan>[
                  TextSpan(
                    text: "${getUserData.name}, ",
                    style: TextStyles.font18Black500weight,
                  ),
                  TextSpan(
                    text: 'your email is ',
                    style: TextStyles.font20BlackBold,
                  ),
                  TextSpan(
                    text: "${getUserData.email}, ",
                    style: TextStyles.font18Black500weight,
                  ),
                  TextSpan(
                    text: 'your number is ',
                    style: TextStyles.font20BlackBold,
                  ),
                  TextSpan(
                    text: getUserData.phone!,
                    style: TextStyles.font18Black500weight,
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/product.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          DetailsAndCountSec(
            getQuantity: getQuantity,
          ),
        ],
      ),
    );
  }
}
