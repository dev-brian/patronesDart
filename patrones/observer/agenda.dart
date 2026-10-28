import 'observador.dart';

class Agenda {
  final List<Observador> _observadores = [];

  void suscribir(Observador observador) {
    _observadores.add(observador);
  }

  void desuscribir(Observador observador) {
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    // La agenda ya no conoce a cada servicio,
    // solo avisa a quienes estén suscritos
    for (final observador in _observadores) {
      observador.actualizar(tarea);
    }
  }
}
