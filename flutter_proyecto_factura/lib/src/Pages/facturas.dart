import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

class Facturas extends StatelessWidget {
  const Facturas({super.key});
  static const routeName = '/facturas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Facturas"),
      ),
      body: Column(
        children: const [
          Text("Soy la factura"),
          Text("Me llamo Factura")
        ],
      ),
      drawer: const AppDrawer(),
    );
  }
}