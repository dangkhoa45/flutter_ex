import 'package:flutter/material.dart';

class Settings3 extends StatelessWidget {
  final List switchName=["Private Account","Received notification","Received newsletter","Received Offer Notification","Received App Updates"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(15),child: Text("Account".toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top :1),
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0,3),
                      color: Colors.black.withOpacity(0.3),
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(Icons.person,size: 40),
                  ),
                  SizedBox(width: 10),
                  Text("Damodar Lohani",style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ),
        ),
            BoxSwitch(text: "Private Account"),
            Padding(padding: EdgeInsets.all(15),child: Text("Push notification".toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
            for(var i=1; i< switchName.length;i++) BoxSwitch(text: switchName[i],),
            SizedBox(height: 40),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top :1),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0,3),
                          color: Colors.black.withOpacity(0.3),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(Icons.logout,size: 40),
                      ),
                      SizedBox(width: 10),
                      Text("Log Out",style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxSwitch extends StatefulWidget {
  final String text;
  BoxSwitch({required this.text});
  @override
  State<BoxSwitch> createState() => _BoxSwitchState();
}

class _BoxSwitchState extends State<BoxSwitch> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top :1),
        child: Container(
          width: MediaQuery.of(context).size.width*0.9,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0,3),
                  color: Colors.black.withOpacity(0.3),
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.text,style: TextStyle(fontSize: 15)),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.purple.shade300,
                activeColor: Colors.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}

