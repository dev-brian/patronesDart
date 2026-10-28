import 'sensor-fahrenheit.dart';
import 'sensor-temperatura.dart';

class SensorAdapter implements SensorTemperatura {
  final SensorFahrenheit sensor;

  SensorAdapter(this.sensor);

  @override
  double obtenerCelsius() {
    double fahrenheit = sensor.leerFahrenheit();
    return (fahrenheit - 32) * 5 / 9;
  }
}
