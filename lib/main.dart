import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          // appBar: AppBar(
          //     title: const Text("I Am rich forever an ever "),
          //     backgroundColor: Colors.blue[900],
          //     centerTitle: true),
          body: CardPresentation()),
    );
  }
}


class CardPresentation extends StatelessWidget {
  const CardPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 30.0,
            ),
            CircleAvatar(
                radius: 70.0,
                backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                backgroundImage: AssetImage('images/astronaut.png')),
            SizedBox(
              height: 10.0,
            ),
            Text("David Arenas",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontStyle: FontStyle.italic,
                    fontFamily: "Pacifico")),
            Text("NASA ASTRONAUT",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    letterSpacing: 2.5,
                    fontStyle: FontStyle.normal,
                    fontFamily: "Source Sans Pro")),
            SizedBox(
              height: 50.0,
              width: 300.0,
              child: Divider(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                thickness: 2.0,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.phone,
                    color: Color.fromRGBO(0, 0, 0, 0.5), size: 20.0),
                title: Text("+34 678 98 36 72",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        letterSpacing: 2.5,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Source Sans Pro")),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.email,
                    color: Color.fromRGBO(0, 0, 0, 0.5), size: 20.0),
                title: Text("sagan.apps.design@gmail.com",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        letterSpacing: 2.5,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Source Sans Pro")),
              ),
            )
          ],
        ))
  }
}