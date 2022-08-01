import 'package:flutter/material.dart';
import 'package:flutter_exercises/config/listApp.dart';
import 'package:flutter_exercises/config/theme.dart';
import 'package:flutter_exercises/routes/todo_app/todo3/appbar.dart';
import 'package:flutter_exercises/routes/todo_app/todo3/boxCustom.dart';

class TodoApp3 extends StatelessWidget {
  const TodoApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.45;
    final height = size.height * 0.12;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Wiki Lists",
              style: largeText,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Box(width: width, height: height),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              'Recenlty Opened Wikis',
              style: titleTextRed,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Recently(
              text: "Brand Guideline",
              avatar: 'assets/avatar/${listImg.elementAt(0)}',
            ),
            Recently(
                text: "Project Grail Sprint Plan",
                avatar: 'assets/avatar/${listImg.elementAt(1)}'),
            Recently(
                text: "Person Wiki",
                avatar: 'assets/avatar/${listImg.elementAt(2)}'),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: [
                Text(
                  'Channels/Group',
                  style: titleTextRed,
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                const Icon(
                  Icons.add_circle_outline,
                  color: Colors.green,
                )
              ],
            ),
             SizedBox(
              height: size.height * 0.02,
            ),
            const ChannelGroupItem(text: "Tixio 2.0"),
           
            const ChannelGroupItem(text: "Michiato")
          ]),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        mini: true,
        elevation: 3,
        onPressed: () {},
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class Recently extends StatelessWidget {
  final String text;
  final String? avatar;
  const Recently({Key? key, required this.text, required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(avatar!),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: smallTextBlack,
          )
        ],
      ),
    );
  }
}

class ChannelGroupItem extends StatelessWidget {
  final String text;
  const ChannelGroupItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ImageIcon(AssetImage('assets/todo_app/todo3/checkbox.png')),
        const SizedBox(
          width: 20,
        ),
        Text(text),
        const Spacer(),
        const Icon(Icons.more_vert),
         SizedBox(
              height: 40,
            ),
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.home,color: Colors.deepOrange,)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
      ]),
    );
  }
}

class Box extends StatelessWidget {
  const Box({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrangeAccent.withOpacity(0.7)),
                child: const BoxCustom(
                    icon: Icons.calendar_today, text: "All Wikis"),
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent.withOpacity(0.7)),
                child: const BoxCustom(
                    icon: Icons.lock_outline_rounded, text: "My private notes"),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 63, 64, 126)
                        .withOpacity(0.7)),
                child: const BoxCustom(
                    icon: Icons.bookmark_outline_rounded,
                    text: "Bookmarked wikis"),
              ),
              Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent[200]),
                  child: const BoxCustom(
                      icon: Icons.pages_outlined, text: "Templates")),
            ],
          )
        ],
      ),
    );
  }
}
