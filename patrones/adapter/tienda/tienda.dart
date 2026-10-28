import 'medio-de-pago.dart';

class Tienda {
  // La tienda solo conoce el contrato MedioDePago
  // No sabe si del otro lado hay un servicio propio o una librería externa
  void finalizarCompra(double total, MedioDePago medioDePago) {
    medioDePago.pagar(total);
  }
}
