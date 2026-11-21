// Contrato que cumple cada acción que se puede ejecutar y revertir
abstract class Comando {
  void ejecutar();
  void deshacer();
}
