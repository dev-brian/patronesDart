# Patrones de Diseño en Dart

Ejemplos de patrones de diseño implementados en Dart. Cada patrón tiene primero un ejemplo **sin** el patrón, que muestra el problema, y después un ejemplo **con** el patrón, que lo resuelve. Puedes ver ese paso en el historial de commits.

Los ejemplos se basan en los vistos en la clase de patrones de diseño.

## Patrones

| Patrón | Carpeta | Descripción |
|--------|---------|-------------|
| Singleton | `patrones/singleton/` | Garantiza que solo exista una instancia de una clase. |
| Clase abstracta | `patrones/factory-method/clase-abstracta/` | Base para Factory Method: un contrato que las subclases implementan. |
| Factory Method | `patrones/factory-method/patron-factory/` | Las subclases deciden qué objeto concreto crear. |
| Adapter | `patrones/adapter/tienda/` | Adapta una librería externa a la interfaz que espera la tienda. |
| Adapter (encargo) | `patrones/adapter/invernadero/` | Adapta un sensor en Fahrenheit a un contrato en Celsius. |
| Observer | `patrones/observer/` | La agenda notifica a los servicios suscritos cuando hay una nueva tarea. |
| Facade | `patrones/facade/` | Una sola clase agrupa los pasos para usar varios subsistemas. |

## Ejecutar

Desde la carpeta de cada ejemplo:

```bash
dart run main.dart
```

## Licencia

[MIT](LICENSE)
