import 'package:flutter/material.dart';

class Galery extends StatelessWidget {
  final List<String> foto = [
    'assets/ariana1.jpg',
    'assets/ariana2.jpg',
    'assets/ariana3.jpg',
    'assets/ariana4.jpg',
    'assets/charlie1.jpg',
    'assets/charlie2.jpg',
    'assets/charlie3.jpg',
    'assets/charlie4.jpg',
  ];

  final List<String> sub = [
    'Ariana Grande',
    'Ariana Grande',
    'Ariana Grande',
    'Ariana Grande',
    'Charlie Puth',
    'Charlie Puth',
    'Charlie Puth',
    'Charlie Puth',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galery"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 40.0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
        ),
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(
                sub[index],
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
