import 'package:flutter/material.dart';
import 'package:hello_world/models/catelog.dart';
import 'package:hello_world/widgets/drawer.dart';
import 'package:hello_world/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context,index){
            return ItemWidget(item: dummylist[index],);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
