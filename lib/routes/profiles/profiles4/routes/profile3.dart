import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/profiles/profiles4/navProfile4.dart';
import 'package:flutter_exercises/routes/todo_app/todo3/appbar.dart';
import 'package:provider/provider.dart';

class Profile3 extends StatefulWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  State<Profile3> createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    final person = Provider.of<Person>(context, listen: false);

    BoxDecoration boxRounded = const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white);
    TextStyle heading = const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
    TextStyle subTitle = TextStyle(fontSize: 12, color: Colors.grey);

    Row infomationRow(IconData icons, String title, String content) => Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [     
        Icon(icons,color: Colors.grey,),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(title),
          const SizedBox(height: 4,),
          Text(content,style: subTitle),
          const SizedBox(height: 12,)
        ],)
      ],
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          //Background and back arrow button
          Container(
              height: sizeH / 3,
              width: sizeW,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(person.backgroundAvatar),
                      fit: BoxFit.cover)),
              child: Padding(
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
              )),

          Padding(
            padding: EdgeInsets.only(top: sizeH / 3.5),
            child: Center(
              child: Container(
                width: sizeW * 0.9,
                child: Column(children: [
                  //Container personal profile
                  Container(
                    width: sizeW * 0.9,
                    child: Stack(
                      children: [
                        //Profile
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: sizeW * 0.9,
                            decoration: boxRounded,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Name, job and address (It should be a column)
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, left: 100),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          person.name,
                                          style: heading,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Text(person.job),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          person.address,
                                          style: subTitle,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Detail about react
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(children: const [
                                        Text('285'),
                                        Text('Likes')
                                      ]),
                                      Column(children: const [
                                        Text('3025'),
                                        Text('Comments')
                                      ]),
                                      Column(children: const [
                                        Text('650'),
                                        Text('Favourites')
                                      ])
                                    ],
                                  ),

                                  const SizedBox(
                                    height: 20,
                                  )
                                ]),
                          ),
                        ),
                        //Avatar
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(person.avatar),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  //User information
                  Container(
                    width: sizeW * 0.9,
                    decoration: boxRounded,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('User infomation'),
                          const SizedBox(height: 20,),
                          infomationRow(Icons.mail,'Email',person.email),
                          infomationRow(Icons.phone,'Phone',person.phone),
                          infomationRow(Icons.web,'Website',person.website),
                          infomationRow(Icons.kayaking,'Address',person.address),
                          infomationRow(Icons.mail,'Email',person.email),
                          infomationRow(Icons.phone,'Phone',person.phone),
                          infomationRow(Icons.web,'Website',person.website),
                          infomationRow(Icons.kayaking,'Address',person.address),
                          ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          )
        ]),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}
