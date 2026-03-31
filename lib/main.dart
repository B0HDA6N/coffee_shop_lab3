/*
import 'package:flutter/material.dart';
import 'Pages/splash_screen_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'Pages/sign_up_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'Pages/sign_in_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'Pages/order_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'Pages/detail_order_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: DetailOrderPage(),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'Pages/account_page.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee Shop Lab 3',
      debugShowCheckedModeBanner: false,
      home: AccountPage(),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'Pages/splash_screen_page.dart';
import 'Pages/sign_in_page.dart';
import 'Pages/sign_up_page.dart';
import 'Pages/tab_bar.dart';
import 'Pages/detail_order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/login': (context) => const SignInPage(),
        '/register': (context) => const SignUpPage(),
        '/main': (context) => const CustomBottomNavigationBar(),
        '/detailPage': (context) => const DetailOrderPage(),
      },
    );
  }
}
