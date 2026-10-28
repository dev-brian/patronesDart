import 'servicio-pago.dart';
import 'terminal-adapter.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tienda = Tienda();

  tienda.finalizarCompra(150.50, ServicioPago());

  // El adapter envuelve a la terminal externa para que cumpla MedioDePago
  tienda.finalizarCompra(150.50, TerminalAdapter(TerminalExterna()));
}
