import 'invernadero.dart';
import 'sensor-adapter.dart';
import 'sensor-fahrenheit.dart';

void main() {
  final sensor = SensorFahrenheit();
  final adapter = SensorAdapter(sensor);
  final invernadero = Invernadero(adapter);

  print('Lectura original del sensor: ${sensor.leerFahrenheit()} °F');
  invernadero.mostrarTemperatura();
}
