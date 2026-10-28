import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda {
  // Problema 1: la tienda depende de dos servicios de pago distintos
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizarCompra(double total, String metodo) {
    if (metodo == 'servicio') {
      servicioPago.pagar(total);
    } else if (metodo == 'terminal') {
      // Problema 2: la tienda debe convertir pesos a dólares
      // NO ES SU RESPONSABILIDAD
      terminalExterna.cobrar(total / 18.0);
    } else {
      throw ArgumentError('Método de pago no válido');
    }
  }
}
