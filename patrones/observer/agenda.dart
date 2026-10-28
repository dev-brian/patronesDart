import 'notificador.dart';
import 'panel-alumno.dart';

class Agenda {
  final PanelAlumno panel = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    panel.mostrar(tarea);
    notificador.notificar(tarea);

    // Problema: la agenda publica tareas y además coordina
    // la UI y las notificaciones (demasiadas responsabilidades)
    // Agregar o quitar un servicio obliga a modificar esta clase
  }
}
