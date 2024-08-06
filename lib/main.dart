import 'package:flutter/material.dart';
import 'package:mi_card/qr_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/car.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Brian Mukwambo',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150.0),
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      '+254700000000',
                      style: TextStyle(
                        fontFamily: 'SpaceMono',
                        fontSize: 20,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'myemail@email.com',
                      style: TextStyle(
                        fontFamily: 'SpaceMono',
                        fontSize: 20,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const QrContact(),
            ],
          ),
        ),
      ),
    );
  }
}
