import 'package:flutter/material.dart';
import 'package:flutter_proyecto_factura/src/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Principal"),
      ),
      drawer:const  AppDrawer(),
    );
  }
}