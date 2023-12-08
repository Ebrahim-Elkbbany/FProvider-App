import 'package:f_provider_project/core/function/navigation.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/data/model/cart_quantity_model.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/presentation/views/cart_view.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/presentation/views/widgets/welcome_and_quantity_count_view_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../register/data/model/register_model.dart';

class WelcomeAndQuantityCountView extends StatelessWidget {
  const WelcomeAndQuantityCountView({super.key});

  @override
  Widget build(BuildContext context) {
    var getUserData = Provider.of<UserModel>(context);
    var getQuantity = Provider.of<CartModel>(context);
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.file(
              getUserData.image!,
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                iconSize: 27,
                onPressed: () {
                  navigateTo(context, const CartView());
                },
              ),
              Positioned(
                right: 1,
                top: 1,
                child: ClipOval(
                  child: Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "${getQuantity.quantity}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: WelcomeAndQuantityCountViewBody(
        getUserData: getUserData,
        getQuantity: getQuantity,
      ),
    );
  }
}
