import 'package:flutter/material.dart';

class MyReportsPage extends StatelessWidget {
  const MyReportsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("My Reports"),
      ),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.report),
            title: Text("Broken Streetlight"),
            subtitle: Text("Status: Pending"),
          ),

          ListTile(
            leading: Icon(Icons.report),
            title: Text("Garbage Not Collected"),
            subtitle: Text("Status: In Progress"),
          ),

          ListTile(
            leading: Icon(Icons.report),
            title: Text("Road Damage Near School"),
            subtitle: Text("Status: Resolved"),
          ),

        ],
      ),
    );
  }
}