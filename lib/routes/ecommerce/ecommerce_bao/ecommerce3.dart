import 'dart:core';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../../config/listApp.dart';

void main() => runApp(MaterialApp(
      home: Ecommerce3(),
    ));

class Ecommerce3 extends StatefulWidget {
  const Ecommerce3({Key? key}) : super(key: key);

  @override
  State<Ecommerce3> createState() => _Ecommerce3State();
}

class _Ecommerce3State extends State<Ecommerce3> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
          Positioned(
            height: size.height * 0.2,
            width: size.width,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeColor: Colors.blue,
                strokeWidth: size.width,
                paintingStyle: PaintingStyle.fill,
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.lerp(
                    Alignment.topLeft, Alignment.centerLeft, 0.5),
                height: size.height * 0.2,
                width: size.width,
                child: const Text("Flutter UIs",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Positioned(
              top: 120,
              left: 40,
              child: SizedBox(
                  width: size.width * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //Image Slide

                        SizedBox(
                            child: ImageSlide(), height: size.height * 0.15),

                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        Catergory(),

                        SizedBox(
                          height: size.height * 0.05,
                        ),

                        FlashSales(),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: size.height * 0.15,
                          child: ListView(
                            itemExtent: 120,
                            scrollDirection: Axis.horizontal,
                            children: const [
                              Product(),
                              Product(),
                              Product(),
                              Product(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ListProduct(),
                        SizedBox(
                          height: 100,
                        ),
                        ListProduct(),

                        ListProduct(),
                      ],
                    ),
                  )))
        ]),
        bottomNavigationBar: BottomBarCustom());
  }
}

class FlashSales extends StatelessWidget {
  const FlashSales({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            const Text(
              "Flash Sales",
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: Colors.black),
              child: const Center(
                  child: Text(
                '02',
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              width: 2,
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: Colors.black),
              child: const Center(
                  child: Text(
                '20',
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              width: 2,
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: Colors.black),
              child: const Center(
                  child: Text(
                '30',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        ),
        const Text(
          'Shop more >>',
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}

class BottomBarCustom extends StatelessWidget {
  const BottomBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black.withOpacity(0.4),
      selectedFontSize: 13,
      unselectedFontSize: 13,
      iconSize: 30,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.red,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black.withOpacity(0.4),
            ),
            label: 'Message'),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartShopping,
                color: Colors.black.withOpacity(0.4)),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black.withOpacity(0.4)),
            label: 'Account')
      ],
    );
  }
}

class ImageSlide extends StatelessWidget {
  const ImageSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listAppImg = [
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/avatar/${listImg.elementAt(3)}'),
              fit: BoxFit.cover)),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/avatar/${listImg.elementAt(0)}'),
              fit: BoxFit.cover)),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/avatar/${listImg.elementAt(1)}'),
              fit: BoxFit.cover)),
    ),
  ];
    return ImageSlideshow(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      initialPage: 0,
      // ignore: sort_child_properties_last
      children: listAppImg.map((value) {
        return value;
      }).toList(),

      // Called whenever the page in the center of the viewport changes.
      // onPageChanged: (value) {
      //   print('Page changed: $value');
      // },
      autoPlayInterval: 3000,
      isLoop: false,
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 4,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..lineTo(0, y / 1.2)
      ..lineTo(x, y * 1.2)
      ..lineTo(x, 0);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

class Catergory extends StatelessWidget {
  const Catergory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
              child: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Text('DarazMail')
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
              child: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Text('DarazMail')
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
              child: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Text('DarazMail')
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Text('DarazMail')
          ],
        )
      ],
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
            width: 100,
            height: 70,
            child: Image(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/food%2Fburger.jpg?alt=media'),
              fit: BoxFit.cover,
            )),
        Stack(
          children: [
            Container(
              width: 100,
              height: 15,
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              width: 60,
              height: 15,
              child: Center(
                  child: Text(
                '12 Sold',
                style: TextStyle(color: Colors.white, fontSize: 13),
              )),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        Text("Rs. 275")
      ],
    );
  }
}

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ProductBox(), ProductBox()],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductBox(),
            ProductBox(),
          ],
        )
      ],
    );
  }
}

Widget ProductBox() {
  return Container(
    width: 180,
    height: 70,
    decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RichText(
            text: TextSpan(
                text: "Vehicles\n",
                style: TextStyle(color: Colors.black),
                children: [
              TextSpan(
                text: "120 people\n want this",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 12),
              )
            ])),
        SizedBox(
          width: 10,
        ),
        const SizedBox(
            width: 60,
            height: 50,
            child: Image(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/food%2Fburger.jpg?alt=media'),
              fit: BoxFit.cover,
            )),
      ],
    ),
  );
}
