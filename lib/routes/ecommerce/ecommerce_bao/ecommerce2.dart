import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/todo_app/todo4/todo4.dart';

void main() => runApp(MaterialApp(home: Ecommerce2()));

class Ecommerce2 extends StatelessWidget {
  const Ecommerce2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          'CART',
          style: TextStyle(color: Colors.red),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: SizedBox(
                height: size.height * 0.55,
                width: size.width * 0.83,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                  children: const [
                    CartItem(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/food%2Fburger.jpg?alt=media'),
                        titleAndPrice: ["Hamburger", '300']),
                    SizedBox(
                      height: 10,
                    ),
                    CartItem(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/food%2Fburger.jpg?alt=media'),
                        titleAndPrice: ["Hamburger", '300']),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Delivery',
                        style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cart Subtotal',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("\$50",
                        style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    SizedBox(
                      height: 5,
                    ),
                    Text("\$05",
                        style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$55",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              width: size.width * 0.85,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(1)),
              child: Center(
                  child: Text(
                'SECURE CHECKOUT',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final NetworkImage image;
  final List<String> titleAndPrice;
  const CartItem({Key? key, required this.image, required this.titleAndPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      Positioned(
        child: Container(
          width: size.width * 0.7,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 2))
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.23,
                  height: size.height * 0.1,
                  child: Image(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleAndPrice.first,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('\$' + titleAndPrice.last,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17))
                  ],
                )
              ]),
        ),
      ),
      Positioned(
        left: size.width * 0.67,
        top: size.height * 0.03,
        child: Container(
          child: Icon(
            Icons.cancel_rounded,
            color: Colors.red,
          ),
        ),
      ),
    ]);
  }
}
