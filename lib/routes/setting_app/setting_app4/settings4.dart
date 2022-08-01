import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    home: Settings4(),
    debugShowCheckedModeBanner: false,
  ));
}

TextStyle heading1 = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
TextStyle heading2 = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
TextStyle item = const TextStyle(
    fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold);

class Settings4 extends StatefulWidget {
  Settings4({Key? key}) : super(key: key);

  @override
  State<Settings4> createState() => _Settings4State();
}

class _Settings4State extends State<Settings4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.green,
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16.0, bottom: 8, left: 8, right: 8),
          child: Column(children: [
            //Title
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Settings', style: heading1)),
            const SizedBox(
              height: 20,
            ),
            //Account settings
            Row(
              children: [
                const Icon(Icons.person, color: Colors.green),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Account',
                  style: heading2,
                )
              ],
            ),
            const Divider(
              color: Colors.grey,
              indent: 4,
              endIndent: 4,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Change password',
                  style: item,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Content settings',
                  style: item,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Social Media',
                  style: item,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Language',
                  style: item,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Private and Policy',
                  style: item,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            //Notifications settings
            Row(
              children: [
                const Icon(Icons.volume_up_outlined, color: Colors.green),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Notifications',
                  style: heading2,
                )
              ],
            ),
            const Divider(
              color: Colors.grey,
              indent: 4,
              endIndent: 4,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New update',
                  style: item,
                ),
                Transform.scale(
                  scale: 0.7,
                  child:
                      CupertinoSwitch(onChanged: (bool value) {}, value: true),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Account Status',
                  style: item,
                ),
                Transform.scale(
                  scale: 0.7,
                  child:
                      CupertinoSwitch(onChanged: (bool value) {}, value: false),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            //Log out button
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              child: const Text(
                'Log out',
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
