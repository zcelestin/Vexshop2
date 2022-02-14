import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vexshop/screens/account_screen.dart';
import 'package:vexshop/screens/cart_screen.dart';
import 'package:vexshop/screens/home_screen.dart';
import 'package:vexshop/screens/login_screen.dart';
import 'package:vexshop/screens/main_screen.dart';
import 'package:vexshop/screens/on_boarbing_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vexshop/screens/registration_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //delete the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoardingScreen.id: (context) => const OnBoardingScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        AccountScreen.id: (context) => const AccountScreen(),
        CartScreen.id: (context) => const CartScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        MainScreen.id: (context) => const MainScreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'Splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final store = GetStorage();
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        bool? _boarding = store.read('onBoarding');
        _boarding == null
            ? Navigator.pushReplacementNamed(context, OnBoardingScreen.id)
            : _boarding == true
                ? Navigator.pushReplacementNamed(context, MainScreen.id)
                : Navigator.pushReplacementNamed(context, OnBoardingScreen.id);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
            Image.asset('assets/images/logo.png'), // Need to show our Logo here
        //
      ),
    );
  }
}
