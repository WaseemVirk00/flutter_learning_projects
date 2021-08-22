import 'package:flutter/material.dart';

import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/pages/my_drawer.dart';
import 'package:hello_world/utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;


  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    print(res.body);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        title: Text("Hello World"),
    actions: [
    IconButton(
    onPressed: () {
    Constants.preferences.setBool("loggedIn", false);
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => login_page()));
    },
    icon: Icon(Icons.exit_to_app_sharp))
    ],
    centerTitle: true,
    ),
    body: Center(
    child: Padding
    (
    padding: const EdgeInsets.all(16.0
    )
    ,
    child: data != null
    ?
    ListView.builder(itemBuilder: (
    context, index) {
    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
    title: Text(data[index]["title"]),
    subtitle: Text("ID: ${data[index]["id"]}"),
    leading: Image.network(data[index]["url"]),
    ),
    );
    },
    itemCount: data.length):
    Center
    (
    child: CircularProgressIndicator
    (
    ),)
    ,
    )
    ,
    drawer: my_drawer
    (
    ),floatingActionButton: FloatingActionButton
    (
    onPressed: () {
    myText = _nameController.text;
    setState(() {});
    },
    child: Icon
    (
    Icons.refresh),
    )
    ,
    );
  }
}

),
);
}
}