import 'observador.dart';

class Historial implements Observador {
  @override
  void actualizar(String tarea) {
    // Recibir la nueva tarea y almacenarla en el historial
    // Puede ser local: una lista en memoria o una base de datos SQLite
    // o remota: Firebase, MongoDB, etc.
    print('Historial: registrar nueva tarea "$tarea"');
  }
}
