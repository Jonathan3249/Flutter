import 'package:flutter/material.dart';
import 'package:flutter_proyecto_factura/src/Pages/clientes.dart';

import 'package:flutter_proyecto_factura/src/Pages/facturas.dart';

import 'package:flutter_proyecto_factura/src/Pages/home_page.dart';
import 'package:flutter_proyecto_factura/src/Pages/tipotarifas.dart';
import 'package:flutter_proyecto_factura/src/Providers/cliente_provider.dart';
import 'package:flutter_proyecto_factura/src/Providers/tarifas_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ClientesProvider>(create: (context) => ClientesProvider()),
        ChangeNotifierProvider<TipoTarifaProvider>(create: (context) => TipoTarifaProvider()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Quicksand',
        colorScheme: ColorScheme.fromSwatch
          (primarySwatch: Colors.purple).copyWith
            (secondary: Colors.deepOrange),
        ),
        home: const HomePage(),
        routes: {
          Clientes.routeName: (context) => const Clientes(),
          Facturas.routeName: (context) => const Facturas(),
          TipoTarifas.routeName: (context) => const TipoTarifas(),
        },
      ),

      );
  }
}