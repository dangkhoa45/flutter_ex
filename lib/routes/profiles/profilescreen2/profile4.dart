import 'package:flutter/material.dart';
class Profile4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.message,color: Colors.grey),
            SizedBox(width: 20),
            Icon(Icons.more_vert,color: Colors.grey),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network( 'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text("Damodar Lohani",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                    )),
                    Text("Full Stack Developer",style: TextStyle(
                      fontSize: 15
                    )),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.map_outlined,color: Colors.grey,),
                          Text("Kathmandu, Nepal",style: TextStyle(
                              fontSize: 15,color: Colors.grey
                          )),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey.shade300,
              child: Text("Over 8+ years of experience and web development and 5+ years of experience in mobile applications development",style: TextStyle(fontSize: 15)),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.grey
                      )
                  )
                ),
                child: Text("SKILLS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
            SizedBox(height: 20),
            Boxlinearprogress(),
            Boxlinearprogress(),
            Boxlinearprogress(),
            Boxlinearprogress(),
            SizedBox(height: 20),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: Colors.grey
                        )
                    )
                ),
                child: Text("Experience".toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
            SizedBox(height: 20),
            BoxTitle(),
            SizedBox(height: 20),
            BoxTitle(),
            SizedBox(height: 20),
            BoxTitle(),
          ],
        ),
      ),
    );
  }
}

class Boxlinearprogress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Text("Wordpress".toUpperCase(),style: TextStyle(fontSize: 15)),
          SizedBox(width: 10),
          Expanded(
            child: LinearProgressIndicator(
                value: 0.75,
                backgroundColor: Colors.deepPurple.shade300,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepPurple)
            ),
          ),
        ],
      ),
    );
  }
}

class BoxTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Icon(Icons.circle,color: Colors.grey,size: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("GID Nepal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              Text("Wordpress Developer (2010 - 2012)",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18))
            ],
          )
        ],
      ),
    );
  }
}
