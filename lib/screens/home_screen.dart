import 'package:flutter/material.dart';
import 'package:vexshop/screens/account_screen.dart';
import 'package:vexshop/screens/cart_screen.dart';
import 'package:vexshop/screens/login_screen.dart';
import 'package:vexshop/screens/on_boarbing_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VexShop'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, CartScreen.id);
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Vendeur Express'),
            accountEmail: const Text("vendeurexpress@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
//         body
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.id);
            },
            title: const Text('Acceuil'),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, AccountScreen.id);
            },
            title: const Text('Mon Compte'),
            leading: const Icon(Icons.person),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, CartScreen.id);
            },
            title: const Text('Mes Commandes'),
            leading: const Icon(Icons.shopping_basket),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
            title: const Text('Categories'),
            leading: const Icon(Icons.dashboard),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
            title: const Text('Paramètre'),
            leading: const Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
            title: const Text('A propos'),
            leading: const Icon(Icons.help),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
            title: const Text('Deconnexion'),
            leading: const Icon(Icons.logout),
          ),
        ]),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
              const Text("Bienvenu chez nous",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Nom",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "adresse email",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              ActionChip(
                  label: const Text("Deconnexion"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, OnBoardingScreen.id);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
