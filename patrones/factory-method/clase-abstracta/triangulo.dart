// Clase que implementa FiguraGeometrica
import 'figura-geometrica.dart';

// Triángulo equilátero: sus tres lados miden lo mismo que la base
class Triangulo implements FiguraGeometrica {
  @override
  double? perimetro;
  @override
  double? area;
  double base = 10;
  double altura = 8.66;

  @override
  void obtenerArea() {
    this.area = this.base * this.altura / 2;
  }

  @override
  void obtenerPerimetro() {
    this.perimetro = this.base * 3;
  }
}
