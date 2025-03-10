import 'package:flutter/material.dart';
import 'package:groceryapp/presentation/screen/login_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  final String firstName = "";
  final String lastName = "";
  String username = "";
  String phonenumber = "";
  String password = "";
  signIn() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("signed in successfully")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    children: [
                      Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "FirstName",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "LastName",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Contact Number",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return " please enter your phone number";
                          }
                          {
                            return 'please enter a valid phone Number';
                          }
                        },
                        onSaved: (newValue) {
                          phonenumber = newValue!;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "UserName",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "password",
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter your password";
                          } else if (value.length < 6) {
                            return "password must be at least 6 character";
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          password = newValue!;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text("Login")),
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
