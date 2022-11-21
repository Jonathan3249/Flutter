import 'package:flutter/material.dart';
import 'package:flutter_proyecto_factura/src/Pages/clientes.dart';
import 'package:flutter_proyecto_factura/src/Pages/facturas.dart';
import 'package:flutter_proyecto_factura/src/Pages/tipotarifas.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Menu Principal'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            title: const Text('Menu'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Clientes.routeName);
            },
            title: const Text('Clientes'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Facturas.routeName);
            },
            title: const Text('Facturas'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.taxi_alert),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(TipoTarifas.routeName);
            },
            title: const Text('Tipo de Tarifas'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
