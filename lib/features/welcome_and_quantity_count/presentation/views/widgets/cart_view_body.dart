import 'package:f_provider_project/core/theming/styles.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/data/model/cart_quantity_model.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody(
      {super.key, required this.getQuantity});

  final CartModel getQuantity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/product.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '2022 Apple iPad Air 10.9',
            style: TextStyles.font20BlackBold,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Quantity: ${getQuantity.quantity}',
            style: TextStyles.font20BlackBold,
          ),
        ],
      ),
    );
  }
}
