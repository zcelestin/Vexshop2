// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/services.dart';
import 'package:vexshop/screens/login_screen.dart';
import 'package:vexshop/screens/main_screen.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const String id = 'Onboard_screen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double scrollerPosition = 0;
  final store = GetStorage();
  onButtonPressed() {
    store.write('onBoarding', true);
    Navigator.pushReplacementNamed(context, MainScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (val) {
            setState(() {
              scrollerPosition = val.toDouble();
            });
          },
          children: [
            OnboardPage(
              bordColumn: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Bienvenue à VEXShop",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/images/logo1.png')),
                  const Text(
                    "Achetez et vendez vos produits ou services sur VEXShop",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            OnboardPage(
              bordColumn: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "L'App mobile de VEX",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/images/logo2.png')),
                  const Text(
                    "Votre satisfaction notre source de motivation",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            OnboardPage(
              bordColumn: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Trouvez votre plaisir",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/images/logo3.png')),
                  const Text(
                    "Profitez de la meilleure expérience d'e-commerce sur motre application mobile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            OnboardPage(
              bordColumn: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Commencez vos achats",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/images/logo4.png')),
                  const Text(
                    "N'attendez plus ! Ne vous faites pas raconter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DotsIndicator(
                dotsCount: 4,
                position: scrollerPosition,
                decorator: const DotsDecorator(
                  activeColor: Colors.white,
                ),
              ),
              scrollerPosition == 3
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrange[100])),
                        child: const Text('commencez'),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, MainScreen.id);
                        },
                      ),
                    )
                  : TextButton(
                      onPressed: () {
                        onButtonPressed();
                      },
                      child: const Text(
                        "Sauter ces étapes",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      )),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
        // button de connexion
        Align(
            child: Container(
          padding: const EdgeInsets.only(right: 10, top: 10),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrange[100])),
            child: const Text('Connexion'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
          ),
        )),
        // end button login
      ],
    ));
  }
}

class OnboardPage extends StatelessWidget {
  final Column? bordColumn;
  const OnboardPage({Key? key, this.bordColumn});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.deepOrange[100],
          child: Center(child: bordColumn),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
            decoration: const BoxDecoration(
                color: Color(0xF87D348D),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100))),
          ),
        ),
      ],
    );
  }
}
