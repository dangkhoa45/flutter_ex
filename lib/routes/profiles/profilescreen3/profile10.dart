import 'package:flutter/material.dart';

class Profile10 extends StatelessWidget {
  const Profile10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/avatar/avatar5.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.8),
                    child: MaterialButton(
                      minWidth: 0,
                      elevation: 0.5,
                      color: Colors.white,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.pink,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Jane Doe ",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Profession",
                      hintText: "Web Designer",
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InputDatePickerFormField(
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    initialDate: DateTime.now(),
                    fieldLabelText: "Date of Birth",
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Interests",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      ChoiceChip(
                        label: Text("Technology"),
                        selected: true,
                        onSelected: (val) {},
                      ),
                      ChoiceChip(
                        label: Text("Coding"),
                        selected: true,
                        onSelected: (val) {},
                      ),
                      ChoiceChip(
                        label: Text("Tutoring"),
                        selected: false,
                        onSelected: (val) {},
                      ),
                      ChoiceChip(
                        label: Text("Video making"),
                        selected: false,
                        onSelected: (val) {},
                      ),
                      ChoiceChip(
                        label: Text("Gaming"),
                        selected: true,
                        onSelected: (val) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    child: Text("Continue"),
                    color: Colors.pink,
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: Profile10()));
