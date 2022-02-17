import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const String id = 'cart-screen';
  const CartScreen({Key? key}) : super(key: key);

  get child => null;

  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            const Text("Panier",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                )),
            const SizedBox(height: 12.0),
            Row(
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Container(
                        width: 60.0,
                        height: 60.0,
                        //padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          //color: Colors.grey[100],
                          image: const DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: NetworkImage(""),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                          width: 100.0,
                          child: Text(
                            "Mike airb made in turqui",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(4.0)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(4.0)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                          // const Spacer(),
                          const Text(
                            "\u20b9 12,000",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
