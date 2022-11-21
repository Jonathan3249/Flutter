import 'package:flutter/widgets.dart';
import 'package:flutter_proyecto_factura/src/API/service_cliente.dart';
import 'package:flutter_proyecto_factura/src/Models/modelos_tipotarifa.dart';

class TipoTarifaProvider extends ChangeNotifier
{
  final _service = TipoTarifaService();
  bool loading = false;
  List<TipoTarifaModel> _todos = [];
  List<TipoTarifaModel> get todo => _todos;

  Future<void> getAllTodos() async {
    loading = true;
    notifyListeners();

    final respuesta = await _service.getTipoTarifa();

    _todos = respuesta;
    loading = false;
    notifyListeners();

  }

}
