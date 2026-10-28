import 'sensor-temperatura.dart';

class Invernadero {
  final SensorTemperatura sensor;

  Invernadero(this.sensor);

  void mostrarTemperatura() {
    print('Temperatura del invernadero: ${sensor.obtenerCelsius()} °C');
  }
}
