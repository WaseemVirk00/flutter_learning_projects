import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  // Whenever be your UI app created must be created through build method
  @override
  Widget build(BuildContext context) {
    // it will return Scaffold is material design Widget // this is roof  // or a structure of design
    return Scaffold(
      // Appbar is header
      appBar: AppBar(
        // title is property of app bar it have some own Widget like text
        title: Text("My first app"),
        // centerTitle is property of app bar that used for title text alignment
        centerTitle: true,
      ),
      body: Center(
          child: Text("Hello World ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.all(0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("waseemvirk00@gmail.com"),
            accountName: Text("Waceem Virk"),
            currentAccountPicture: CircleAvatar(
              child: Text("W"),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.all_inbox),
            title: Text("Music"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.movie),
            title: Text("Movies"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.shopping_cart),
            title: Text("Shopping"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.apps),
            title: Text("Apps"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.dashboard),
            title: Text("Docs"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: Text("About"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.power_settings_new),
            title: Text("Logout"),
          ),
        ]),
      ),
    );
  }
}

