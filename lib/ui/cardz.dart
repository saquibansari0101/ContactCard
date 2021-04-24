import 'package:card_app/ui/iconic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Cardz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _getCard(context));
  }
}

Container _getCard(BuildContext context) {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffd8e3e7), Color(0xff51c4d3)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 70.0));
  return Container(
    padding: EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff51c4d3),
        Color(0xff126e82),
      ],
    )),
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xff132c33), borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onDoubleTap: () {},
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Color(0xff51c4d3),
              backgroundImage: AssetImage('assets/images/myphoto.jpg'),
            ),
          ),
          Text(
            "Saquib Ansari",
            style: TextStyle(
                foreground: Paint()..shader = linearGradient,
                fontSize: 30,
                fontFamily: 'KaushanScript',
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Software Developer",
            style: TextStyle(
                color: Color(0xffd8e3e7),
                fontSize: 18,
                fontFamily: 'RustyColePen',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
            width: 200,
            child: Divider(
              thickness: 1.5,
              color: Color(0xffd8e3e7),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            color: Color(0xffd8e3e7),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Color(0xff132c33),
              ),
              title: Text(
                '+91 91685 94565',
                style: TextStyle(
                    color: Color(0xff132c33),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            color: Color(0xffd8e3e7),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Color(0xff132c33),
              ),
              title: Text(
                'saquib_ansari@outlook.com',
                style: TextStyle(
                    color: Color(0xff132c33),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            color: Color(0xffd8e3e7),
            child: ListTile(
              leading: Icon(
                MyFlutterApp.github,
                color: Color(0xff132c33),
              ),
              title: GestureDetector(
                child: Text(
                  '@SaquibAnsari0101',
                  style: TextStyle(
                      color: Color(0xff132c33),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => {
                  launch('https://github.com/SaquibAnsari0101')
                },
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            color: Color(0xffd8e3e7),
            child: ListTile(
              leading: Icon(
                MyFlutterApp.hackerrank,
                color: Color(0xff132c33),
              ),
              title: GestureDetector(
                child: Text(
                  '@saquib_ansari',
                  style: TextStyle(
                      color: Color(0xff132c33),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => {
                  launch('https://www.hackerrank.com/saquib_ansari')
                },
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
