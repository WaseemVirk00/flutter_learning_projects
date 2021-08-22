import 'package:flutter/material.dart';

Drawer my_drawer() {
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