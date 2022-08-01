import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Ecommerce4(),
    debugShowCheckedModeBanner: false,
  ));
}

TextStyle title = const TextStyle(
    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
TextStyle priceText = const TextStyle(
    color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold);

class Ecommerce4 extends StatefulWidget {
  const Ecommerce4({Key? key}) : super(key: key);

  @override
  State<Ecommerce4> createState() => _Ecommerce4State();
}

class _Ecommerce4State extends State<Ecommerce4> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Stuff'),
        backgroundColor: Colors.red,
        leading: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Categories',
                style: title,
              ),
              const SizedBox(
                height: 10,
              ),
              //List view 1
              SizedBox(
                width: sizeW,
                height: sizeH * 0.2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) =>
                        const Item1('assets/nhan/image3.jpg', 'Tables'))),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Featured Products',
                style: title,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: sizeW,
                height: sizeH * 0.2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) =>
                        const Item2('assets/nhan/image1.jpg', 'Sofa Set'))),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent products',
                    style: title,
                  ),
                  const Text(
                    'View all',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: sizeW,
                height: sizeH * 0.5,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: ((context, index) =>
                        const Item3('assets/nhan/bag.jpg', 'Drawer Table'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  final String _image;
  final String _name;
  const Item1(this._image, this._name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeW * 1 / 3,
      child: Column(
        children: [
          Container(
            height: sizeW * 1 / 3 - 24,
            width: sizeW * 1 / 3 - 24,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(_image), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(_name),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  final String _image;
  final String _name;
  const Item2(this._image, this._name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeW * 1 / 3,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(_image), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: sizeH * 0.2 * 0.2,
                  color: Colors.black.withOpacity(0.7),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        _name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  final String _image;
  final String _name;
  const Item3(this._image, this._name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            //Image ,name and price item
            Row(children: [
              //Image
              Container(
              width: sizeW / 3,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(_image), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Name
                Text(_name),
                //Price
                Text('Rs. 8000',style: priceText)
              ],
            )
            ],),
            //Icon cart
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(child: const Icon(Icons.shopping_cart)),
            )
          ]),
        ));
  }
}
