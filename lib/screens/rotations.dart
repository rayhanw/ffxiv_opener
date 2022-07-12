import 'package:ffxiv_opener/components/custom_drawer.dart';
import 'package:flutter/material.dart';

class Rotations extends StatefulWidget {
  const Rotations({Key? key}) : super(key: key);

  @override
  State<Rotations> createState() => _RotationsState();
}

class _RotationsState extends State<Rotations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("FFXIV Opener"),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
      drawer: const CustomDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
