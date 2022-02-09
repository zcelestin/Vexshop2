import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  get dotsDecorate => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: PageView(
                children: const [
                  Image(image: AssetImage('images/logo.png')),
                  Image(image: AssetImage('images/baniere.jpg')),
                  Image(image: AssetImage('images/concert.jpeg')),
                  Image(image: AssetImage('images/shop.jfif')),
                  Image(image: AssetImage('images/card.jpg')),
                  Image(image: AssetImage('images/phone.jpg')),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: const DotsIndicator(
                  dotsCount: 6,
                  decorator: DotsDecorator(
                    color: Colors.black87, // Inactive color
                    activeColor: Colors.redAccent,
                  ),
                ),
              ),
            ],
          ),
        ),

        // DotsIndicator(
        //   dotsCount: 6,
        //   decorator: dotsDecorate,

        //   //   dotSize: const Size.square(6),
        //   //   activeSize: const Size.square(12,6)
        // ),
      ],
    );
  }
}
