import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();

  // Iniciar la película
  proyector.encender();
  audio.encender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('IT');
  // Sin Facade, el cliente llama a cada clase y método necesarios
  // y debe conocer el orden correcto de los pasos

  // Detener la película
  reproductor.detener();
  audio.apagar();
  proyector.apagar();
}
