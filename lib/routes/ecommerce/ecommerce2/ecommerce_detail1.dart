import 'package:flutter/material.dart';

const List<String> images = [
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F2.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F3.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F5.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
];

class detail1 extends StatelessWidget {
  const detail1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket, color: Colors.grey),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Women Apperals",
          style: TextStyle(color: Colors.grey.shade800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(images[1]), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "\$500",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Womens Casual Purse",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 18.0),
                ),
                _buildImagesGrid(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _buildAddToCartButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImagesGrid() {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.all(10.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CoverImage(
              images[0],
              height: 80,
            ),
            SizedBox(
              width: 20.0,
            ),
            CoverImage(
              images[1],
              height: 80,
            ),
            SizedBox(
              width: 20.0,
            ),
            CoverImage(
              images[3],
              height: 80,
            ),
          ],
        ));
  }

  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              onPressed: () {},
              child: Text("Add to Cart"),
              color: Colors.orange,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CoverImage extends StatelessWidget {
  const CoverImage(this.image, {Key? key, this.fit, this.height, this.width})
      : super(key: key);
  final String? image;
  final BoxFit? fit;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image!,
      fit: fit,
      width: width,
      height: height,
    );
  }
}

class CoverImageAsset extends StatelessWidget {
  const CoverImageAsset(this.image,
      {Key? key, this.fit, this.height, this.width})
      : super(key: key);
  final String? image;
  final BoxFit? fit;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image!,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
