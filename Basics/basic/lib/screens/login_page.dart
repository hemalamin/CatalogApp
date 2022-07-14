// import 'dart:html';

import 'package:basic/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      // this function is for changing back the login button to the normal state, changebutton = false will change button to its nomrmal state
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", label: Text("username")),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", label: Text("password")),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password length should be 6";
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    color: Colors.deepPurpleAccent,
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        width: changeButton ? 50 : 100,
                        height: 40,
                        alignment: Alignment.center,
                        // ignore: prefer_const_constructors
                        duration: Duration(seconds: 1),
                        // ignore: prefer_const_constructors
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            // ignore: prefer_const_constructors
                            : Text(
                                "Login",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
