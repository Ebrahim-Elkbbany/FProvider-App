import 'package:f_provider_project/features/welcome_and_quantity_count/data/model/cart_quantity_model.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    var getQuantity = Provider.of<CartModel>(context);
    return  Scaffold(
      appBar: AppBar(
        title:const Text(
          "Cart",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                iconSize: 27,
                onPressed: () {},
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
      body: CartViewBody(getQuantity: getQuantity),
    );
  }
}
