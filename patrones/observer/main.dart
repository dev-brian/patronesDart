import 'agenda.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main() {
  final agenda = Agenda();
  final panel = PanelAlumno();
  final notificador = Notificador();

  // Suscripción a cada servicio observador
  agenda.suscribir(panel);
  agenda.suscribir(notificador);

  // Ambos observadores reciben el aviso
  agenda.publicarTarea('Investigación de patrones de diseño');

  // El usuario ya no quiere recibir notificaciones
  agenda.desuscribir(notificador);

  // Se genera otra tarea
  agenda.publicarTarea('Investigar el patrón Facade');
  // Sólo el panel recibe el aviso de la nueva tarea

  // Cuándo conviene: cuando varios componentes
  // necesitan reaccionar al mismo cambio
  // y sus suscripciones pueden variar.
  // Pero no implica ejecución asíncrona o paralela
}
