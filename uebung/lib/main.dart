import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//StatelessWidget, da es keine veränderbaren Zustände gibt
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Eine Leinwand mit der Hintergrundfarbe Hellblau
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        //TODO: Fügen Sie an dieser Stelle eine Appbar mit der Aufschrift AppBar und der Hintergrundfarbe schwarz ein

        //TODO: fügen Sie dieser BottomNavigationBar 3 Icons hinzu (home ("Home"), business ("Arbeit"), school ("Uni"))
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[],
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              //Text in der font "Roboto" mit der Schriftgröße 80
              child: Text(
                'Test',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 80,
                  //TODO: Der Text soll aus grün-umrandeten (dicke: 2) Buchstaben bestehen (Siehe Übungsblatt 2 Ziel der Übung)
                ),
              ),
              color: Colors.white,
            ),
            //TODO: Erstellen Sie 4 weitere Container nach folgenden Vorgaben (padding soll bei allen Containern gleich sein)
            //TODO: Container 1: einen Farbverlauf von links oben nach rechts unten mit den Farben Cyan und Indigo

            //TODO: Container 2: in weiß mit einem Flutter-Logo (als png aus dem Internet)

            //TODO: Container 3: in schwarz mit dem audiotrack-Icon (weiß, Größe 50.0)

            //TODO: Container 4: einen Button in der Mitte in der Farbe Cyan mit der Aufschrift "Button" (ohne Funktion)
          ],
        ),
      ),
    );
  }
}
