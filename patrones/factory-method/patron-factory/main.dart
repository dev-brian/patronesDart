import 'generador-reportes.dart';

void main() {
  final generador = GeneradorReportes();

  // Un mismo servicio, formatos diferentes
  generador.generarReporte('excel', [10, 9, 8, 0, 0, 10, 8]);
  generador.generarReporte('json', [10, 9, 8, 0, 0, 10, 8]);
  generador.generarReporte('texto', [10, 9, 8, 0, 0, 10, 8]);
}
