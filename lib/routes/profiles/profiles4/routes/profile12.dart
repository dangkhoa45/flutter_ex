import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/profiles/profiles4/routeProfile4.dart';
import 'package:provider/provider.dart';

import '../navProfile4.dart';

TextStyle heading1 = const TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28);
TextStyle subHeading1 = const TextStyle(
    color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16);
TextStyle profileTitle = TextStyle(color: Colors.black.withOpacity(0.8));
TextStyle profileItem = const TextStyle(fontWeight: FontWeight.bold);

final imageList = ['assets/nhan/random1.jpg',
                  'assets/nhan/random2.jpg',
                  'assets/nhan/random3.jpg',
                  'assets/nhan/random4.jpg',
                  'assets/nhan/random5.jpg',
                  'assets/nhan/random6.jpg',
                  'assets/nhan/random7.jpg',
                  'assets/nhan/random8.jpg',
                  'assets/nhan/random9.jpg',
                  'assets/nhan/random1.jpg',
                  'assets/nhan/random2.jpg',
                  'assets/nhan/random3.jpg',
                  'assets/nhan/random4.jpg',
                  'assets/nhan/random5.jpg',
                  'assets/nhan/random6.jpg',
                  'assets/nhan/random7.jpg',
                  'assets/nhan/random8.jpg',
                  'assets/nhan/random9.jpg'];

class Profile12 extends StatelessWidget {
  const Profile12({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final person = Provider.of<Person>(context, listen: false);
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(children: [
        //Background image
        Container(
          height: sizeH,
          width: sizeW,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(person.avatar), fit: BoxFit.cover)),
        ),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: sizeH / 2,
              backgroundColor: Colors.white.withOpacity(0),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    //Name
                    Center(
                      child: Text(
                        person.name,
                        style: heading1,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    //Job
                    Center(
                      child: Text(
                        person.job,
                        style: subHeading1,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    //Detail of person
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Item 1 (Projects)
                        Column(
                          children: [
                            Text('Projects', style: profileTitle),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('1135', style: profileItem)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 1,
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        //Item 2 (Hourly Rate)
                        Column(
                          children: [
                            Text('Hourly Rate', style: profileTitle),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('\$65', style: profileItem)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 1,
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        //Item 3 (Location)
                        Column(
                          children: [
                            Text('Location', style: profileTitle),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(person.address, style: profileItem)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //Button Group
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //View Profile button
                        SizedBox(
                          width: 130,
                          child: OutlinedButton(
                            onPressed: () => Navigator.of(context).pushNamed(RouteGenerator.profile3),
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.blue),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                )),
                            child: const Text('VIEW PROFILE',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        //Message button
                        SizedBox(
                          width: 130,
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pushNamed(RouteGenerator.profile8),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.blue.shade300,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                )),
                            child: const Text('MESSAGE'),
                          ),
                        )
                      ],
                    ),
                    //Gallery
                    SizedBox(
                      height: sizeH*0.6,
                      width: sizeW,
                      child: GridView.count(
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        crossAxisCount: 3,
                        children: [
                          for(var image in imageList) imageGallery(image)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

Container imageGallery(String url){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(url),fit:BoxFit.cover)
    ),
  );
}