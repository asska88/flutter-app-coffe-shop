import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/module/order_notifer.dart';
import 'package:myapp/screen/order_confirmation_screen.dart';
import 'package:myapp/screen/splash_screen.dart';
import 'package:myapp/service/firebase_options.dart';
import 'package:myapp/screen/login_screen.dart';
import 'package:myapp/screen/sign_screen.dart';
import 'package:myapp/screen/signup_screen.dart';
import 'package:myapp/module/cart_provider.dart';
import 'package:myapp/module/favorite_provider.dart';
import 'package:myapp/screen/admin_screen.dart';
import 'package:myapp/screen/cart_screen.dart';
import 'package:myapp/screen/checkout_screen.dart';
import 'package:myapp/screen/detail_product_screen.dart';
import 'package:myapp/screen/home_screen.dart';
import 'package:myapp/widget/user_profile_widget.dart';
import 'package:provider/provider.dart'; // Add this line at the top of your main.dart file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
        ChangeNotifierProvider(create: (context) => OrderNotifier())
      ],
      child: MaterialApp(
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 180, 180, 180)))),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignupScreen(),
          '/sign': (context) => const SignScreen(),
          '/home': (context) => const HomeScreen(),
          '/detail': (context) => const DetailProductScreen(),
          '/cart': (context) => const CartScreen(),
          '/profile': (context) => const UserProfileWidget(),
          '/admin': (context) => const AdminScreen(),
          '/checkout': (context) => const CheckoutScreen(),
          '/orderConfirmation': (context) =>  OrderConfirmationScreen(orderId: ModalRoute.of(context)!.settings.arguments as String),
        },
      ),
    ),
  );
}
