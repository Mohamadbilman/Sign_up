import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate1 = new GlobalKey<FormState>();
    send() {
      var formdata1 = formstate1.currentState;
      if (formdata1.validate()) {
        Navigator.of(context).pushNamed("Email");
      } else {
        print("null");
      }
    }

    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        color: Colors.black,
      ),
      SingleChildScrollView(
        child: Form(
          key: formstate1,
          child: Container(
            height: 300,
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            margin: EdgeInsets.only(left: 20, right: 20, top: 222),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                TextFormField(
                  validator: (text) {
                    if (text.length < 1) {
                      return "must not be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      labelText: "Enter First name",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Required"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (text) {
                    if (text.length < 1) {
                      return "must not be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      labelText: "Enter Last name",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Required"),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: send,
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
