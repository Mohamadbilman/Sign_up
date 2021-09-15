import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  Email({Key key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        color: Colors.black,
      ),
      Container(
        height: 400,
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        margin: EdgeInsets.only(left: 20, right: 20, top: 150),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Enter E-mail",
                  hintText: "Examle@gmail.com"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Required"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "confirm Password",
                  hintText: "Required"),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("Start"),
            )
          ],
        ),
      )
    ]));
  }
}
