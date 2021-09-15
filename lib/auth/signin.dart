import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        color: Colors.black,
      ),
      Container(
        height: 300,
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        margin: EdgeInsets.only(left: 20, right: 20, top: 222),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Enter First name",
                  hintText: "Required"),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Enter Last name",
                  hintText: "Required"),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("Email");
              },
              child: Text("Next"),
            ),
          ],
        ),
      )
    ]));
  }
}
