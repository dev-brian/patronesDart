import 'documento-excel.dart';
import 'documento-json.dart';
import 'documento-texto.dart';
import 'documento.dart';

class GeneradorReportes {
  void generarReporte(String formato, List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones');
    }

    // Problema: este objeto conoce todas las implementaciones concretas
    // Agregar un formato nuevo obliga a modificar este switch
    Documento documento;

    switch (formato) {
      case 'texto':
        documento = DocumentoTexto();
        break;
      case 'json':
        documento = DocumentoJson();
        break;
      case 'excel':
        documento = DocumentoExcel();
        break;
      default:
        throw ArgumentError('Formato inválido: $formato');
    }

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente');
  }
}
