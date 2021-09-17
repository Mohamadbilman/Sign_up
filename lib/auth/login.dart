import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenpassword = true;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();
    send() {
      var formdata = formstate.currentState;
      if (formdata.validate()) {
        print("valid");
      } else {
        print("unvalid");
      }
    }

    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.black,
        height: double.infinity,
      ),
      SingleChildScrollView(
        child: Form(
          key: formstate,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 400,
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
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        labelText: "Enter E-mail",
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "example@mail.com"),
                  ),
                  SizedBox(
                    height: 30,
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
                          child: Icon(
                            Icons.visibility,
                            color: Colors.black,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      labelText: "Enter pasword",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    minWidth: 200,
                    splashColor: Colors.yellowAccent,
                    onPressed: send,
                    color: Colors.blue[600],
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forgot Password?"),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Click here",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    indent: 50,
                    endIndent: 50,
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Creat Account?",
                        style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      minWidth: 200,
                      height: 50,
                      splashColor: Colors.yellowAccent,
                      onPressed: () {
                        Navigator.of(context).pushNamed("SignUp");
                      },
                      color: Colors.white,
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.qr_code,
                          color: Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.aod,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    )
                  ],
                )),
          ]),
        ),
      ),
    ]));
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenpassword = !isHiddenpassword;
    });
  }
}
