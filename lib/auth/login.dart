import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        color: Colors.black,
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.mail),
                    labelText: "Enter E-mail",
                    hintText: "example@mail.com"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Enter pasword"),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                minWidth: 200,
                splashColor: Colors.yellowAccent,
                onPressed: () {},
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
                Text("Creat Account?", style: TextStyle(color: Colors.white)),
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
    ]));
  }
}
