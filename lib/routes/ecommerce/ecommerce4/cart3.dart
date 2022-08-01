import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CartApp3(),
    debugShowCheckedModeBanner: false,
  ));
}

class CartApp3 extends StatefulWidget {
  CartApp3({Key? key}) : super(key: key);

  @override
  State<CartApp3> createState() => _CartApp3State();
}

class _CartApp3State extends State<CartApp3> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    Item item1 = Item('Salmon bowl', 'assets/nhan/plate1.jpg', 25);
    Item item2 = Item('Spring bowl', 'assets/nhan/plate2.jpg', 20);
    Item item3 = Item('Avocado bowl', 'assets/nhan/plate3.jpg', 26);
    Item item4 = Item('Berry bowl', 'assets/nhan/plate4.jpg', 14);
    List<Item> listFood = [item1, item2, item3, item4];
    return Scaffold(
      body: Stack(
        children: [
          //Aqua container
          Container(
            height: sizeH / 3,
            color: const Color(0xFF21BFBD),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //Icon on top
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: sizeH / 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.filter_list, color: Colors.white),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.menu, color: Colors.white)
                      ],
                    )
                  ],
                ),
              ),
              //Title
              Padding(
                padding: EdgeInsets.only(left: sizeW / 8, top: sizeH / 20),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'Delicious ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Food', style: TextStyle(fontSize: 20))
                ])),
              )
            ]),
          ),
          //List item and white container
          Padding(
            padding: EdgeInsets.only(top: sizeH / 4),
            child: Container(
                width: sizeW,
                height: sizeH * 3 / 4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: sizeW / 8,
                      right: sizeW / 8,
                      top: 20,
                      bottom: sizeH / 8),
                  child: ListView.builder(
                    itemCount: listFood.length,
                    itemBuilder: ((context, index) =>
                        (ItemContainer(listFood[index]))),
                  ),
                )),
          )
        ],
      ),
      bottomSheet: BottomSheet(
        builder: (BuildContext context) {
          return SizedBox(
            height: sizeH / 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(
                height: 40,
                width: 40,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black26),
                      padding: EdgeInsets.zero
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    )
                    )
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black26),
                      padding: EdgeInsets.zero
                    ),
                    child: const Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                      size: 20,
                    )
                    )
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black26),
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      primary: const Color(0xFF1C1428)
                    ),
                    child: const Text('Checkout')
                    )
              )
            ]),
          );
        },
        onClosing: () {},
      ),
    );
  }
}

class ItemContainer extends StatefulWidget {
  Item _item;
  ItemContainer(this._item, {Key? key}) : super(key: key);

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Item and name image
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget._item._image),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget._item._name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('\$${widget._item._price}',
                      style: const TextStyle(color: Colors.grey))
                ],
              ),
            ],
          ),
          //Add icon
          GestureDetector(
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

class Item {
  final String _name;
  final String _image;
  final double _price;
  Item(this._name, this._image, this._price);
  double get price => _price;
  String get image => _image;
  String get name => _name;
}
