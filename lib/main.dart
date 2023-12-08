import 'package:f_provider_project/core/theming/colors.dart';
import 'package:f_provider_project/features/register/data/model/register_model.dart';
import 'package:f_provider_project/features/register/presentation/views/register_view.dart';
import 'package:f_provider_project/features/welcome_and_quantity_count/data/model/cart_quantity_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FProviderApp());
}

class FProviderApp extends StatelessWidget {
  const FProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserModel(),
        ),

        ChangeNotifierProvider(
          create: (context) => CartModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: ColorManger.kPrimaryColor,
        ),
        home: const RegisterView(),
      ),
    );
  }
}
