import 'package:flutter/material.dart';

class TodoMess extends StatelessWidget {
  final Color colorBox;
  final Todo todoContent;
  final bool divider;
  const TodoMess(this.colorBox, this.todoContent, this.divider, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: divider ? 300 : 170,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: colorBox),
          child: Padding(
            //If have divider padding top and bottom will expend
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: divider ? 30 : 10,
                bottom: divider ? 30 : 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        '${todoContent.timeStart} - ${todoContent.timeEnd} AM',
                        style: timeTextStyle(colorBox == Colors.white
                            ? Colors.pinkAccent
                            : Colors.white),
                      ),
                    )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(todoContent.content,
                      style: contentTextStyle(colorBox == Colors.white
                          ? Colors.pinkAccent
                          : Colors.white)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  widthFactor: 10,
                  child: Text(todoContent.subContent),
                ),
                divider
                    ? const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Divider(
                          height: 2,
                          color: Colors.pinkAccent,
                          endIndent: 0,
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

class Todo {
  final String content;
  final String subContent;
  final String timeStart;
  final String timeEnd;
  const Todo(this.content, this.subContent, this.timeStart, this.timeEnd);
}

TextStyle timeTextStyle(var colorText) {
  return TextStyle(color: colorText, letterSpacing: 2, fontSize: 12);
}

TextStyle contentTextStyle(var colorText){
  return TextStyle(color: colorText, fontSize: 14, fontWeight: FontWeight.w500);
}