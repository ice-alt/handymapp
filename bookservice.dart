import 'package:flutter/material.dart';

class ServiceProfile extends StatefulWidget {
  const ServiceProfile({Key? key}) : super(key: key);

  @override
  _ServiceProfileState createState() => _ServiceProfileState();
}

class _ServiceProfileState extends State<ServiceProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/1761201.jpg'),
            ),
            const Text(
              'Isioma Ekejiuba',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text('0551234444',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const Text('isiomaekejiuba@yahoo.com',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))
          ],
        ),
      ),
    );
  }
}
