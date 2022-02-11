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
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('vendeur Express'),
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
              color: Colors.red,
            ),
          ),
//           body
          const InkWell(
            child: ListTile(
              title: Text('Acceuil'),
              leading: Icon(Icons.home),
            ),
          ),
          const InkWell(
            child: ListTile(
              title: Text('Mon Compte'),
              leading: Icon(Icons.person),
            ),
          ),
          const InkWell(
            child: ListTile(
              title: Text('Mes Commandes'),
              leading: Icon(Icons.shopping_basket),
            ),
          ),
          const InkWell(
            child: ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard),
            ),
          ),
          const Divider(),
          const InkWell(
            child: ListTile(
              title: Text('Paramètre'),
              leading: Icon(Icons.settings),
            ),
          ),
          const InkWell(
            child: ListTile(
              title: Text('A propos'),
              leading: Icon(Icons.help),
            ),
          ),
          const InkWell(
            child: ListTile(
              title: Text('Deconnexion'),
              leading: Icon(Icons.logout),
            ),
          ),
          // ListTile(title: Text("Contactez-nous")),
          // ListTile(title: Text("S'inscrire"))
        ]),
      ),
      body: ListView(
        children: const <Widget>[BannerWidget()],
      ),
    );
  }
}
