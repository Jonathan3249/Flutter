import 'dart:convert';
import 'package:flutter_proyecto_factura/src/Models/modelos_tipotarifa.dart';
import 'package:http/http.dart' as http;
import '../Models/modelos_cliente.dart';

class ClienteService{
  Future<List<ClienteModel>> getAll() async {
    const url = 'https://proyectofactura.azurewebsites.net/api/Clientes/ListaCliente';
    final link = Uri.parse(url);
    final response = await http.get(link);

    if (response.statusCode == 200)
    {
      final json = jsonDecode(response.body) as List;
      final todos = json.map((e) {
        return ClienteModel(
          idCliente: e['idCliente'],
          nombre: e['nombreCompleto'],
          direccion: e['direccion'],
          numero: e['telefono']);
      }).toList();
      return todos;
    }
    return [];

  }
}

class TipoTarifaService{
  Future<List<TipoTarifaModel>> getTipoTarifa() async {
    const url = 'https://proyectofactura.azurewebsites.net/api/Tarifas/ListaTarifas';
    final link = Uri.parse(url);
    final response = await http.get(link);

    if (response.statusCode == 200)
    {
      final json = jsonDecode(response.body) as List;
      final todosTarifa = json.map((e) {
        return TipoTarifaModel(
          id: e['idTarifa'],
          tipoTarifa: e['tipoTarifa'],
          precio: e['precio']);
      }).toList();
      return todosTarifa;
    }
    return [];
  }
}

