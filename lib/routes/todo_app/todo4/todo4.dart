import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/todo_app/todo4/todoMess.dart';
import 'theme.dart';

const whiteRadius = <String, Radius>{
  'bottomRight': Radius.circular(20),
  'bottomLeft': Radius.circular(20),
  'topRight': Radius.circular(20)
};

const Todo todo1 = Todo('Meeting with', 'John Doe', '10:30', '11:30');
const Todo todo2 = Todo('Meeting with', 'John Doe', '10:30', '11:30');
const Todo todo3 = Todo('Meeting with', 'John Doe', '10:30', '11:30');
const Todo todo4 = Todo('Meeting with', 'John Doe', '10:30', '11:30');
const listDataTodoBox = [todo1, todo2, todo3, todo4];

void main() {
  runApp(
      const MaterialApp(home: TodoApp4(), debugShowCheckedModeBanner: false));
}

class TodoApp4 extends StatelessWidget {
  const TodoApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          /*---------Pink box-------------*/

          Align(
            alignment: Alignment.bottomLeft,
            child: Material(
              borderRadius: whiteBorder(),
              child: Container(
                height: sizeH - sizeH * 0.8,
                width: sizeW,
                color: Colors.pinkAccent,
              ),
            ),
          ),

          /*----------------White box-------------*/

          Positioned(
            left: 0,
            bottom: sizeH * 1 / 10,
            child: Container(
                height: sizeH * 0.5,
                width: sizeW - 10,
                decoration: BoxDecoration(
                    borderRadius: whiteBorder(), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  child: ListView.builder(
                    itemCount: listDataTodoBox.length,
                    itemBuilder: listTodoBox,
                  ),
                )),
          ),

          /*--------Blue box----------*/

          ClipPath(
            clipper: CustomClipPath(),
            child: Stack(
              children: [
                Container(
                  height: sizeH * 0.75,
                  width: sizeW,
                  decoration: BoxDecoration(
                      borderRadius: blueBorder(), color: Colors.indigo),
                ),

                /*----------Children of blue box-----------*/
                /*Back Button*/
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                Positioned(
                  left: sizeW / 20,
                  top: sizeH / 10,
                  /*------------Title of todos----------*/
                  child: Row(
                    children: [
                      /*-------Day and month-------*/
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 18, right: 8, bottom: 18),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("AUG", style: pinkNor),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "21",
                                style: pinkNorWeight,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                      /*-----------Date on blue box---------------*/
                      SizedBox(
                        height: 70,
                        width: 100,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text("WEDNESDAY", style: whiteTitleNor),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "TODAY",
                                  style: whiteTitleWeight,
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          /*Pink box and input field */
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(children: [
                  SizedBox(
                    width: sizeW * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "jot down your task",
                        hintStyle: TextStyle(
                          color: Colors.white54
                        )
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add),color: Colors.white,)
                ]),
              ))
        ]));
  }
}

BorderRadius whiteBorder() {
  return const BorderRadius.only(
      bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20));
}

BorderRadius blueBorder() {
  return const BorderRadius.only(bottomLeft: Radius.circular(40));
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    //Clip in blue
    final height = size.height;
    final width = size.width;
    final oPTH = height / 3; //one per three height
    Path path = Path();
    //
    path.lineTo(0, oPTH - 30);
    //Radius top left white
    path.quadraticBezierTo(10, oPTH, 40, oPTH);
    path.lineTo(width - 30, oPTH);
    //Radius top right white
    path.quadraticBezierTo(width - 15, oPTH, width - 10, oPTH + 15);
    path.lineTo(width - 10, height - 20);
    path.quadraticBezierTo(width - 10, height - 5, width, height - 10);
    path.lineTo(width, height);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget listTodoBox(BuildContext context, int index) {
  var indexP = index + 1;
  if (indexP % 2 == 0) {
    return TodoMess(Colors.white, listDataTodoBox[index], true);
  } else if (indexP % 3 == 0) {
    return TodoMess(Colors.indigo.shade200, listDataTodoBox[index], false);
  } else {
    return TodoMess(Colors.pinkAccent.shade100, listDataTodoBox[index], false);
  }
}
