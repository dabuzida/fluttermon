import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "POKETMON",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      appBar: AppBar(
        title: Text('EVE'),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('eve.gif'),
                  radius: 60,
                ),
              ),
              Divider(
                height: 60, // divider 위젯의 이전과 이후 위젯의 거리
                color: Colors.grey[850],
                thickness: 1,
                endIndent: 30,
              ),
              Text(
                "NAME222",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("EVE", style: TextStyle(color: Colors.white, letterSpacing: 2, fontSize: 38, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Text(
                "EVE POWER LEVEL",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("15", style: TextStyle(color: Colors.white, letterSpacing: 2, fontSize: 38, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10,
                  ),
                  Text("using lightsaber",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10,
                  ),
                  Text("face hero tatoo",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10,
                  ),
                  Text("fire flames",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ))
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('eve.jpg'),
                  radius: 40,
                  // backgroundColor: Colors.blue[400],
                ),
              )
            ],
          )),
    );
  }
}
