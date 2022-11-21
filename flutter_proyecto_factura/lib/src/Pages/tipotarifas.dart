import 'package:flutter/material.dart';
import 'package:flutter_proyecto_factura/src/Providers/tarifas_provider.dart';
import 'package:flutter_proyecto_factura/src/Widgets/drawer.dart';
import 'package:provider/provider.dart';

class TipoTarifas extends StatefulWidget {
  const TipoTarifas({super.key});
  static const routeName = '/tipotarifas';

  @override
  State<TipoTarifas> createState() => _TipoTarifasState();
}

class _TipoTarifasState extends State<TipoTarifas> {
  @override
  void initState()
  {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TipoTarifaProvider>(context, listen: false).getAllTodos();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tipos de Tarifa"),
      ),
      drawer: const AppDrawer(),
      body: Consumer<TipoTarifaProvider>(builder: (context, value, child)
      {
        if(value.loading)
        {
          return const Center(child: CircularProgressIndicator(),);
        }
        final todos = value.todo;
        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,index)
          {
            final todo = todos[index];
            return ListTile(
              leading: CircleAvatar(
                child: Text(todo.id.toString()),
              ),
              title: Text(
                todo.tipoTarifa,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('${todo.precio.toString()} por Kw.')
                ],
              ),
            );
          });
          }),
    );
  }
}