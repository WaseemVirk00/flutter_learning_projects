import 'package:flutter/material.dart';
import 'package:hello_world/components/my_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Browse"),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0, left: 50),
            child: Text(
              "Curated Course Collections to get you started.",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          my_row(Icons.stars,"Featured",Icons.perm_data_setting,"Data Science"),
          my_row(Icons.blur_circular_sharp,"Marketing",Icons.design_services,"Design"),
          my_row(Icons.web_outlined,"Web Dev",Icons.videogame_asset,"Game Dev"),
        ],
      ),
      drawer: Drawer(),
    );
  }


}
