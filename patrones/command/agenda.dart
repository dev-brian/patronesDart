class Agenda {
  final tareas = [
    'Estudiar Dart',
    'Programar mis HUs',
    'Hacer un prompt para que chat haga la exposición',
    'Hacer pull request de las HU terminadas',
    'Presentar el examen TOEFL',
  ];

  // Estado de una tarea
  String? eliminada; // el nombre de la tarea
  int? posicionAnterior; // la posición de la tarea en el arreglo

  // Borrar una tarea
  void eliminar(int posicion) {
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }

  // Ya no se quiere borrar la tarea, se quiere recuperar
  void deshacer() {
    final tarea = eliminada;
    final posicion = posicionAnterior;

    if (tarea != null && posicion != null) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }

  // Solo se recuerda la última tarea eliminada:
  // no se pueden deshacer varias eliminaciones
}
