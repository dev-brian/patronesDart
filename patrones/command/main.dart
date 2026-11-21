import 'controlador-comandos.dart';
import 'eliminar-tarea.dart';

void main() {
  final tareas = [
    'Estudiar Dart',
    'Programar mis HUs',
    'Hacer un prompt para que chat haga la exposición',
    'Hacer pull request de las HU terminadas',
    'Presentar el examen TOEFL',
  ];

  final controlador = ControladorComandos();

  print('Las tareas pendientes son: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 1));
  print('Lista de tareas después de eliminar: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 0));
  print('Lista de tareas después de eliminar: $tareas');

  // Deshacer las eliminaciones, de la más reciente a la más antigua
  controlador.deshacer();
  print('Lista de tareas después del primer deshacer: $tareas');

  controlador.deshacer();
  print('Lista de tareas después del segundo deshacer: $tareas');

  // Cada comando conserva su propia eliminación
  // Cada comando sabe cómo ejecutar y revertir su acción
  // Ahora se pueden agregar más comandos a la agenda
  // Conviene cuando se requiere manejar un historial de comandos
}
