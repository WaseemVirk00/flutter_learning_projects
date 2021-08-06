import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(50),
                child: Text(
                  "Blue Sky Techno",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.zero,
                    bottomLeft: Radius.zero,
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "waseemvirk00@gmail.com",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                      ),
                    ),
                    Center(
                      child: ConstrainedBox(
                        constraints:
                        BoxConstraints(minHeight: 30, minWidth: 500),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.pinkAccent,
                          ),
                          onPressed: null,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          Divider(
                            color: Colors.black54,
                          ),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 50,
                                )),
                          ),
                          Text("OR"),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 10.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 50,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.black12,
                                ),
                                shape: BoxShape.circle),
                            child: Image.asset("assets/images/facebook.png",width: 25,height: 25,),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.black12,
                                ),
                                shape: BoxShape.circle),
                            child: Image.asset("assets/images/gmail_plus.png",width: 25,height: 25,),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.black12,
                                ),
                                shape: BoxShape.circle),
                            child: Image.asset("assets/images/twitter.png",width: 25,height: 25,),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
