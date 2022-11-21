import 'package:flutter/material.dart';
import 'package:flutter_proyecto_factura/src/Models/modelos_cliente.dart';


import '../API/service_cliente.dart';

class ClientesProvider extends ChangeNotifier {
  final _service = ClienteService();
  bool loading = false;
  List<ClienteModel> _todos = [];
  List<ClienteModel> get todos => _todos;

  Future<void> getAllTodos() async {
    loading = true;
    notifyListeners();

    final responses = await _service.getAll();

    _todos = responses;
    loading = false;
    notifyListeners();

  }

}