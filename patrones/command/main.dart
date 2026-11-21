import 'agenda.dart';

void main() {
  final agenda = Agenda();

  // Mostrar las tareas
  print('Todas las tareas iniciales: ${agenda.tareas}');

  // Borrar una tarea
  agenda.eliminar(1);
  print('Tareas después de eliminar: ${agenda.tareas}');

  // Deshacer la eliminación
  agenda.deshacer();
  print('Tareas después de deshacer: ${agenda.tareas}');
}
