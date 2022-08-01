// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_exercises/config/listApp.dart';
// // import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

// // import '../routes/todo_app/todo1.dart';

// // // void main() => runApp(const MaterialApp(
// // //   debugShowCheckedModeBanner: false,
// // //       home: Home(),
// // //     ));

// // class Home extends StatefulWidget {
// //   const Home({Key? key}) : super(key: key);

// //   @override
// //   State<Home> createState() => _HomeState();
// // }

// // class _HomeState extends State<Home> {
// //   @override
// //   Widget build(BuildContext context) {
// //     var size = MediaQuery.of(context).size;

// //     /*24 is for notification bar on Android*/
// //     final double itemHeight = (size.height - kToolbarHeight - 24) / 1.8;
// //     final double itemWidth = size.width / 2;

// //     return Scaffold(
// //       body: GridView.count(
// //         crossAxisCount: 2,
// //         childAspectRatio: (itemWidth / itemHeight),
// //         controller: ScrollController(keepScrollOffset: true),
// //         shrinkWrap: true,
// //         scrollDirection: Axis.vertical,
// //          children: []
// //         //listApp.map((String value) {
// //         //   return Column(
// //         //     children: [
// //         //       Text(value),
// //         //       AppCard(text: value),
// //         //     ],
// //         //   );
// //         // }).toList(),
// //       )
// //     );
// //   }
// // }

// // class AppCard extends StatelessWidget {
// //   final String text;
// //   const AppCard({Key? key, required this.text}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //     return CarouselSlider(
// //       options: CarouselOptions(
// //           height: size.height * 0.45,
// //           autoPlay: true,
// //           initialPage: 1,
// //           enlargeCenterPage: true),
// //       items: listTodoAppImages.map((i) {
// //         return Builder(
// //           builder: (BuildContext context) {
// //             return Container(
// //                 width: MediaQuery.of(context).size.width,
// //                 margin: const EdgeInsets.symmetric(horizontal: 5.0),
// //                 decoration: const BoxDecoration(color: Colors.amber),
// //                 child: Image.asset(
// //                   'assets/todo_app/$i.png',
// //                   fit: BoxFit.contain,
// //                 ));
// //           },
// //         );
// //       }).toList(),
// //     );
// //   }
// // }

// // class AppCard2 extends StatelessWidget {
// //   final String text;
// //   const AppCard2({Key? key, required this.text}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return ImageSlideshow(
// //       width: double.infinity,
// //       height: MediaQuery.of(context).size.height * 0.45,
// //       initialPage: 0,
// //       // ignore: sort_child_properties_last
// //       children: listTodoAppImages.map((value) {
// //         return GestureDetector(
// //           child: Image.asset('assets/todo_app/$value.png'),
// //           onTap: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(builder: (context) => TodoApp1()));
// //           },
// //         );
// //       }).toList(),

// //       // Called whenever the page in the center of the viewport changes.
// //       // onPageChanged: (value) {
// //       //   print('Page changed: $value');
// //       // },
// //       autoPlayInterval: 3000,
// //       isLoop: true,
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_exercises/config/listApp.dart';
// import 'package:flutter_exercises/config/theme.dart';

// void main() => runApp(const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     ));

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   // this variable determnines whether the back-to-top button is shown or not
//   bool _showBackToTopButton = false;

//   // scroll controller
//   late ScrollController _scrollController;

//   @override
//   void initState() {
//     _scrollController = ScrollController()
//       ..addListener(() {
//         setState(() {
//           if (_scrollController.offset >= 400) {
//             _showBackToTopButton = true; // show the back-to-top button
//           } else {
//             _showBackToTopButton = false; // hide the back-to-top button
//           }
//         });
//       });

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose(); // dispose the controller
//     super.dispose();
//   }

//   // This function is triggered when the user presses the back-to-top button
//   void _scrollToTop() {
//     _scrollController.animateTo(0,
//         duration: const Duration(seconds: 3), curve: Curves.linear);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     /*24 is for notification bar on Android*/
//     final double itemHeight = (size.height - kToolbarHeight - 24) / 1.65;
//     final double itemWidth = size.width / 2.3;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter UI Challenges"),
//       ),
//       body: GridView.count(
//           crossAxisSpacing: 10,
//           crossAxisCount: 2,
//           childAspectRatio: (itemWidth / itemHeight),
//           controller: _scrollController,
//           shrinkWrap: true,
//           scrollDirection: Axis.vertical,
//           children: listApp
//               .map((e) => AppItem(
//                     name: e,
//                   ))
//               .toList()),
//       floatingActionButton: _showBackToTopButton == false
//           ? null
//           : FloatingActionButton(
//               onPressed: _scrollToTop,
//               child: const Icon(Icons.arrow_upward),
//             ),
//     );
//   }
// }

// class AppItem extends StatelessWidget {
//   final String name;
//   const AppItem({Key? key, required this.name}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => mapAppDetail[name]!));
//       },
//       child: Column(
//         children: [
//           Text(
//             name,
//             style: mediumText,
//           ),
//           Image.asset(
//             'assets/' + mapAppImg[name]!,
//             fit: BoxFit.cover,
//           )
//         ],
//       ),
//     );
//   }
// }
