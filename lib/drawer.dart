import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Waceem Virk"),
            accountEmail: Text("waseemvirk00@gmail.com"),
            decoration: BoxDecoration(color: Colors.purple),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://twitter.com/waceem_/photo"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
