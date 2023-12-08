import 'package:f_provider_project/core/theming/styles.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/data/model/cart_quantity_model.dart';
import 'package:flutter/material.dart';

class DetailsAndCountSec extends StatelessWidget {
  const DetailsAndCountSec({super.key, required this.getQuantity});
  final CartModel getQuantity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '2022 Apple iPad Air 10.9',
          style: TextStyles.font20BlackBold,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              '448.97 \$',
              style: TextStyles.font18BlackSemiBold
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                getQuantity.removeFromCart();
              },
            ),
            Text(
              "${getQuantity.quantity}",
              style: TextStyles.font18BlackSemiBold.copyWith(
                  fontWeight: FontWeight.bold
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                getQuantity.addToCart();
              },
            ),
          ],
        ),
      ],
    );
  }
}
