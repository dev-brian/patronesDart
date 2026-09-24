import 'configuración.dart';

void main() {
  final pantallaInicio = Configuracion('es');
  final pantallaPerfil = Configuracion('es');
  pantallaInicio.idioma = 'en';

  print('Inicio de la pantalla de inicio:${pantallaInicio.idioma}');
  print('Inicio de la pantalla de perfil:${pantallaPerfil.idioma}');
}
