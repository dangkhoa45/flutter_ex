import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/ecommerce/ecommerce_bao/ListTitle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(home: Ecommerce1()));

class Ecommerce1 extends StatefulWidget {
  const Ecommerce1({Key? key}) : super(key: key);

  @override
  State<Ecommerce1> createState() => _Ecommerce1State();
}

class _Ecommerce1State extends State<Ecommerce1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromARGB(255, 118, 66, 185),
          elevation: 0,
          bottomOpacity: 0.9,
          title: Text('Comfirm Order'),
          leading: Icon(Icons.arrow_back_outlined),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Subtotal'), Text('Rs. 500.0')],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Delivery fee'), Text('Rs. 100.0')],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text('Rs. 600.0',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    height: size.height * 0.55,
                    child: ListView.builder(
                        itemCount: listTitle.length,
                        itemBuilder: (context, index) {
                          return CardCustom(
                              title: listTitle[index],
                              detail: listDetail[index]);
                        }),
                  )
                ],
              ),
              Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 118, 66, 185)),
                width: size.width * 0.9,
                height: size.height * 0.08,
                child: Center(
                    child: Text(
                  'Confirm Order',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ));
  }
}

class CardCustom extends StatelessWidget {
  final String title;
  final List<String> detail;
  const CardCustom({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.grey.shade300, Colors.grey.shade200])),
          width: double.infinity,
          height: 30,
          child: Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
        ),
        RadioListTile(
            title: Text(detail.first),
            value: detail,
            groupValue: detail,
            onChanged: (dynamic value) {}),
        RadioListTile(
            title: Text(detail.last),
            value: detail.first,
            groupValue: detail,
            onChanged: (dynamic value) {}),
      ],
    );
  }
}
