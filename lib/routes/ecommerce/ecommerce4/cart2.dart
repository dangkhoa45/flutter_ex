import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cart2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Cart2 extends StatefulWidget {
  Cart2({Key? key}) : super(key: key);

  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {
  double total = 5000;
  List<Item> listItem = const [
    Item('Item 10', 200),
    Item('Item 11', 200),
    Item('Item 12', 200),
    Item('Item 13', 200),
    Item('Item 14', 200),
    Item('Item 15', 200)
  ];
  @override
  Widget build(BuildContext context) {
    double sizeBottomSheet = MediaQuery.of(context).size.height * 1.5 / 10;
    List<double> listSubTotal = [for (Item i in listItem) i.price];
    List<int> quantityItem = List.filled(listItem.length, 1);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('My Cart'),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.deepOrange,
      ),
      bottomSheet: BottomSheet(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1.5 / 10,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                //Check out price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Checkout Price: '),
                    Text('Rs. $total')
                  ],
                ),
                //Button
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                    child: const Text('Checkout'),
                  ),
                )
              ]),
            ),
          );
        },
        onClosing: () {},
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: sizeBottomSheet, left: 4, right: 4),
        child: ListView.builder(
          itemCount: listItem.length,
          itemBuilder: ((context, index) {
            return CustomCard(listItem[index], listSubTotal[index],
                quantityItem[index], index, context);
          }),
        ),
      ),
    );
  }
}

class Item {
  final String _nameItem;
  final double _price;
  final String _itemImage = "assets/nhan/bag.jpg";
  const Item(this._nameItem, this._price);
  double get price => _price;
  String get nameItem => _nameItem;
  String get itemImage => _itemImage;
}

class CustomCard extends StatefulWidget {
  Item item;
  double subTotal;
  int quantity;
  int index;
  BuildContext context;
  CustomCard(this.item, this.subTotal, this.quantity, this.index, this.context,
      {Key? key})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: SizedBox(
          height: 100,
          child: Row(
            children: [
              //Image
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(widget.item.itemImage),
                        fit: BoxFit.cover)),
              ),
              //Item name and price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.item._nameItem,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.delete,
                          size: 14,
                          color: Colors.red,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text('Price: \$'),
                        Text('${widget.item.price}')
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Sub Total: '),
                        Text('\$${widget.subTotal}',
                            style: const TextStyle(color: Colors.orange))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Ship Free',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              //Button decrese and increse the number of items
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.remove,
                            color: Colors.red,
                            size: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                              child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('${widget.quantity}'),
                          )),
                        ),
                        GestureDetector(
                          child: Icon(Icons.add, color: Colors.green, size: 16),
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
