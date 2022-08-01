import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
    const CustomAppBar({Key? key}) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0

    _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.black,),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar/avatar4.jpg')),
              ),
            
          ],
          backgroundColor: Colors.white,
          elevation: 0,
         );
    }
}