import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Text(
            "I am \na Box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.teal,
              gradient: LinearGradient(colors: [Colors.yellow, Colors.pink]),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 5, offset: Offset(2.0, 5.0))
              ]),
        ),
      ),
    );
  }
}

