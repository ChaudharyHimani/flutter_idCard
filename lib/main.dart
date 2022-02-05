import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int developerLevel = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
          title: Text('ID card'),
          centerTitle: true,
          backgroundColor: Colors.green[400],
          elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            developerLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.green[400],
            ),
            Text('NAME',
                style: TextStyle(color: Colors.green[700], letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text('Himani',
                style: TextStyle(
                    color: Colors.pink,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Text('AGE',
                style: TextStyle(color: Colors.green[700], letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text('22',
                style: TextStyle(
                    color: Colors.pink,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Text('CURRENT DEVELOPER LEVEL',
                style: TextStyle(color: Colors.green[700], letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text('$developerLevel',
                style: TextStyle(
                    color: Colors.pink,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: Colors.green[700]),
                SizedBox(
                  width: 5.0,
                ),
                Text('himanichaudhary@gmail.com',
                    style: TextStyle(
                        color: Colors.pink,
                        letterSpacing: 1.0,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
