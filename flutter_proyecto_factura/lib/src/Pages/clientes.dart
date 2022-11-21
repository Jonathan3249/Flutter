import 'package:flutter/material.dart';
import 'package:flutter_proyecto_factura/src/Providers/cliente_provider.dart';
import '../Widgets/drawer.dart';
import 'package:provider/provider.dart';





class Clientes extends StatefulWidget {
  const Clientes({super.key});
static const routeName = '/clientes';
  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  void initState()
  {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ClientesProvider>(context, listen: false).getAllTodos();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clientes"),
      ),
      drawer: const AppDrawer(),
      body: Consumer<ClientesProvider>(builder: (context, value, child)
      {
        if(value.loading)
        {
          return const Center(child: CircularProgressIndicator(),);
        }
        final todos = value.todos;
        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,index)
          {
            final todo = todos[index];
            return ListTile(
              leading: CircleAvatar(
                child: Text(todo.idCliente.toString()),
              ),
              title: Text(
                todo.nombre,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(todo.direccion)
                ],
              ),
            );
          });
          }),
    );
  }
}