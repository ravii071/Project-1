import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // Center(
      // child: Text(
      //   "Login",
      //   style: TextStyle(
      //       fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
      // ),

      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            SizedBox(height: 20.0),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),

                  InkWell(
                    splashColor: Color.fromARGB(0, 12, 212, 243),
                    onTap: () async {
                      changeButton = true;

                      setState(() {});
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 200,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: changeButton
                        //     ? BoxShape.circle
                        //     : BoxShape.rectangle
                        borderRadius:
                            BorderRadius.circular(changeButton ? 20 : 9),
                      ),
                    ),
                  )

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(maximumSize: Size(100, 50)),
                  //   child: Text("Login"),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
