class Configuracion {
  //Es un constructor privado para que no se pueda crear una instancia de la clase fuera de la clase
  Configuracion._();

  //Es una instancia estática de la clase lo que es static: vive durante el ciclo de la app
  static final Configuracion _instancia = Configuracion._();

  //Es un factory que retorna la instancia estática
  factory Configuracion() => _instancia;

  String idioma = 'es';
}
