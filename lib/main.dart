import 'package:flutter/material.dart';
import 'package:flutter_exercises/config/listApp.dart';
import 'package:flutter_exercises/config/theme.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;

  // scroll controller
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 1.8;
    final double itemWidth = size.width / 2.4;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Challenges"),
      ),
      body: GridView.count(
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          controller: _scrollController,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: listApp
              .map((e) => AppItem(
                    name: e,
                  ))
              .toList()),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_upward),
            ),
    );
  }
}

class AppItem extends StatelessWidget {
  final String name;
  const AppItem({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => mapAppDetail[name]!));
      },
      child: Column(
        children: [
          Text(
            name,
            style: mediumText,
          ),
          Image.asset(
            'assets/' + mapAppImg[name]!,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
