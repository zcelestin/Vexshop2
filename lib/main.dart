import 'package:flutter/material.dart';
import 'package:vexshop/register.dart';
import 'banner.dart';

void main() {
  runApp(const MaterialApp(
    color: Colors.blue,
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => const SignUp()),
                  ),
                );
              }),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const [
          DrawerHeader(child: Text("Vendeur Express")),
          ListTile(title: Text("Acceuil")),
          ListTile(title: Text("VexShop")),
          ListTile(title: Text("A propos")),
          ListTile(title: Text("Blog")),
          ListTile(title: Text("Contactez-nous")),
          ListTile(title: Text("S'inscrire"))
        ]),
      ),
      body: ListView(
        children: const <Widget>[BannerWidget()],
      ),
    );
  }
}
