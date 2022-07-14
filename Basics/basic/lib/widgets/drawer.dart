import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ignore: prefer_const_literals_to_create_immutables
      child: Container(
        color: Colors.deepPurpleAccent,
        // ignore: prefer_const_literals_to_create_immutables
        child: ListView(children: [
          // ignore: prefer_const_constructors
          DrawerHeader(
              padding: EdgeInsets.zero,
              // ignore: prefer_const_constructors
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Hemal Amin"),
                accountEmail: const Text("hemal.amin2000@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/hoody.jpg")),
              )),
          // ignore: prefer_const_constructors
          ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            // ignore: prefer_const_constructors
            title: Text(
              "Home",
              textScaleFactor: 1,
            ),
          ),
          const Divider(
            height: 10,
          ),
          // ignore: prefer_const_constructors
          ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),

            // ignore: prefer_const_constructors
            title: Text(
              "Profle",
              textScaleFactor: 1,
            ),
          ),

          const Divider(
            height: 10,
          ),
          // ignore: prefer_const_constructors
          ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            // ignore: prefer_const_constructors
            title: Text(
              "Email",
              textScaleFactor: 1,
            ),
          )
        ]),
      ),
    );
  }
}
