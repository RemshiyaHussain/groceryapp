import 'package:flutter/material.dart';
import 'package:groceryapp/presentation/widgets/bottom_navigation.dart';

import 'package:groceryapp/presentation/screen/authentication/sign_in_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String username = "";
  String password = "";
  login() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Successful")));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: "User Name",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                          ),
                         
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return "Please enter user name";
                          //   } else {
                          //     return "invalid name";
                          //   }
                          // },
                          // onSaved: (newValue) {
                          //   username = newValue!;
                          // }
                          ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "please enter your password";
                        //   } else if (value.length < 6) {
                        //     return "password must be at least 6 character";
                        //   }
                        //   return null;
                        // },
                        // onSaved: (newValue) {
                        //   password = newValue!;
                        // },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            login();
                          },
                          child: Text("Login")),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {}, child: Text("Forgot password",)),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
                            },
                            child: Text("Signin"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
