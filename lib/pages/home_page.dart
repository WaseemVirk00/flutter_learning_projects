import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Hello World"),
      //   centerTitle: true,
      // ),
        appBar: null,
        body: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/images/lake.jpg",
                width: 600,
                height: 240,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          padding: const EdgeInsets.only(bottom: 8),
                        ),
                        Container(
                          child: Text(
                            "Kandersteg, Switzerland",
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                          padding: const EdgeInsets.all(0),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    width: 300,
                    height: 80,
                  ),
                  Container(
                    child: Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    padding: const EdgeInsets.all(8),
                    width: 50,
                    height: 80,
                  ),
                  const Text('41'),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.call,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Container(
                              child: Text(
                                "Call",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.near_me,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Container(
                              child: Text(
                                "ROUTE",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.share,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Container(
                              child: Text(
                                "Share",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])),
            Container(
                padding: const EdgeInsets.all(32.0),
                alignment: Alignment.center,
                child: Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.',
                  softWrap: true,
                ))
          ],
        ));
  }
}

