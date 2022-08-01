import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/profiles/profiles4/navProfile4.dart';
import 'package:provider/provider.dart';

class Profile8 extends StatefulWidget {
  const Profile8({Key? key}) : super(key: key);

  @override
  State<Profile8> createState() => _Profile8State();
}

class _Profile8State extends State<Profile8> {
  @override
  Widget build(BuildContext context) {
    final person = Provider.of<Person>(context, listen: false);
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;

    TextStyle heading = const TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

    TextStyle heading1 = const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

    TextStyle heading2 =
        const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

    TextStyle subTitle = TextStyle(fontSize: 12, color: Colors.grey);

    Row infomationRow(IconData icons, String title, String content) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icons,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(
                  height: 4,
                ),
                Text(content, style: subTitle),
                const SizedBox(
                  height: 8,
                ),
              ],
            )
          ],
        );

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          //Background avatar
          Container(
            height: sizeH / 3,
            width: sizeW,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(person.backgroundAvatar),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: sizeH / 3,
            width: sizeW,
            color: Colors.black.withOpacity(0.4),
          ),
          //Back button
          Padding(
            padding: EdgeInsets.only(top: sizeH / 3 * 1 / 5),
            child: IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              highlightColor: Colors.black.withOpacity(0.6),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          //Edit button
          Positioned(
            top: sizeH / 3 - 50,
            right: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white),
              child: IconButton(
                alignment: Alignment.topLeft,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
                highlightColor: Colors.black.withOpacity(0.6),
                onPressed: () => {},
              ),
            ),
          ),
          //Content of page
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: sizeH / 3.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Avatar
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade100,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.grey.shade300,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(person.avatar),
                      ),
                    ),
                  ),
                ),
                //Name
                Center(
                    child: Text(
                  person.name,
                  style: heading,
                )),
                const SizedBox(
                  height: 8,
                ),
                Center(child: Text(person.job, style: heading2)),
                const SizedBox(
                  height: 16,
                ),
                Text('User infomation', style: heading1),
                const SizedBox(
                  height: 8,
                ),
                //User infomation
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Column(children: [
                      infomationRow(
                          Icons.gps_fixed, 'Location', person.address),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      infomationRow(Icons.email, 'Email', person.email),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      infomationRow(Icons.phone, 'Phone', person.phone),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      infomationRow(Icons.person, 'About me', person.about)
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text('User infomation', style: heading1),
                const SizedBox(
                  height: 8,
                ),
                //Text single scroll view
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Column(children: [
                      infomationRow(
                          Icons.gps_fixed, 'Location', person.address),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      infomationRow(Icons.email, 'Email', person.email),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      infomationRow(Icons.phone, 'Phone', person.phone),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      infomationRow(Icons.person, 'About me', person.about)
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          )
        ]),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
