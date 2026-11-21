import 'comando.dart';

class EliminarTarea implements Comando {
  final List<String> tareas;
  final int posicion;
  String? _eliminada; // cada comando recuerda la tarea que eliminó

  EliminarTarea(this.tareas, this.posicion);

  @override
  void ejecutar() {
    _eliminada = tareas.removeAt(posicion);
  }

  @override
  void deshacer() {
    final tarea = _eliminada;

    if (tarea != null) {
      tareas.insert(posicion, tarea);
      _eliminada = null;
    }
  }
}
