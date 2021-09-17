import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  Email({Key key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  bool isHiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate2 = new GlobalKey<FormState>();
    send() {
      var formdata2 = formstate2.currentState;
      if (formdata2.validate()) {
        return "valid";
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
        Form(
          key: formstate2,
          child: Container(
            height: 325,
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            margin: EdgeInsets.only(left: 20, right: 20, top: 150),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                TextFormField(
                  validator: (text) {
                    if (text.length < 1) {
                      return "Email must not be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                      labelText: "Enter E-mail",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Examle@gmail.com  "),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (text) {
                    if (text.length < 1) {
                      return "Enter password";
                    }
                    return null;
                  },
                  obscureText: isHiddenpassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(Icons.visibility, color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Required"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (text) {
                    if (text.length < 1) {
                      return "Enter password";
                    }
                    return null;
                  },
                  obscureText: isHiddenpassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(Icons.visibility, color: Colors.black)),
                      labelText: "confirm Password",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Required"),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: send,
                  child: Text("Start"),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenpassword = !isHiddenpassword;
    });
  }
}
