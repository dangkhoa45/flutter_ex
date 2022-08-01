import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/ecommerce/ecommerce2/ecommerce_detail1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  late bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            'Setting',
            style: TextStyle(
              color: _dark ? Colors.white : Colors.black,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
              icon: Icon(
                FontAwesomeIcons.moon,
              ),
            ),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.purple,
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        "John Doe",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(images[0]),
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.lock_outlined,
                            color: Colors.purple,
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.language,
                            color: Colors.purple,
                          ),
                          title: Text("Change Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.purple,
                          ),
                          title: Text("Change Location"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SwitchListTile(
                    value: true,
                    onChanged: (val) {},
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      "Received notification",
                    ),
                  ),
                  SwitchListTile(
                    value: false,
                    onChanged: null,
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      "Received newsletter",
                    ),
                  ),
                  SwitchListTile(
                    value: true,
                    onChanged: (val) {},
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      "Received Offer Notification",
                    ),
                  ),
                  SwitchListTile(
                    value: false,
                    onChanged: null,
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      "Received App Updates",
                    ),
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
            Positioned(
              child: Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              ),
              bottom: -20,
              left: -20,
            ),
            Positioned(
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.powerOff,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              bottom: 00,
              left: 00,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}

void main() => runApp(const MaterialApp(home: Setting1()));
