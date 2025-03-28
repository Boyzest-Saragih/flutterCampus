import 'package:fe_matkul/screens/w03.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>W03Page())
              );
          }, child: const Text("TODOS")),
      ),
    );
  }
}