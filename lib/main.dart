import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalIDCard(),
    );
  }
}

class DigitalIDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F2FF),
      appBar: AppBar(
        title: Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 89, 181, 226),
      ),
      body: Center(
        child: Container(
          width: 330,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'SHANTA SARKER',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                'Batch: 61, Department of CSE',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text('ID: 0182310012101052'),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: shantasarker.cse@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: 01795855895'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
