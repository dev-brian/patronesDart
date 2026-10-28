import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

class CineFacade {
  final Proyector _proyector;
  final SistemaAudio _audio;
  final Reproductor _reproductor;

  // Constructor
  CineFacade(
    this._proyector,
    this._audio,
    this._reproductor,
  );

  // Con Facade se agrupan todos los llamados a las clases y métodos involucrados
  // Es válido cuando todos tienen que ver con un solo objetivo;
  // de lo contrario, deja de ser una fachada
  void verPelicula(String pelicula, int volumen) {
    _proyector.encender();
    _audio.encender();
    _audio.ajustarVolumen(volumen);
    _reproductor.reproducir(pelicula);
  }

  void terminarReproduccion() {
    _reproductor.detener();
    _audio.apagar();
    _proyector.apagar();
  }
}
