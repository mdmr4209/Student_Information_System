import 'package:flutter/material.dart';
import 'package:ums/pages/home.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      label: Text('Email'),
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      label: Text('Password'),
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: Icon(Icons.security),
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String _email = _emailController.text;
                          String _pass = _passwordController.text;

                          if (_email == "admin@edu.bd" && _pass == "admin@") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Invalid email or password",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStatePropertyAll(Size(150, 60)),
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.blueGrey),
                          shadowColor: WidgetStatePropertyAll(Colors.black),
                          elevation: WidgetStatePropertyAll(20),
                        ),
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: WidgetStatePropertyAll(
                            Size(150, 60),
                          ),
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.blueGrey),
                          shadowColor: WidgetStatePropertyAll(Colors.black),
                          elevation: WidgetStatePropertyAll(20),
                        ),
                        child: Text(
                          "Exit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
