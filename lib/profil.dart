import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profil"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            new Image.asset(
              'assets/aulia.jpg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15)),
            Center(
              child: Text(
                "Nama                 : Aulia Miftahul Zanah\n"
                "Nim                    : 362055401009\n"
                "Program Studi   : Teknik Informatika\n"
                "Jenis Kelamin    : Perempuan\n",
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ));
  }
}
