import 'documento.dart';

abstract class GeneradorReportes {
  // Este es el Factory Method, que debe ser implementado por las subclases
  Documento crearDocumento();

  void generarReporte(List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones');
    }

    final documento = crearDocumento();

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente');
  }
}
