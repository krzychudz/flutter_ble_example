import 'package:flutter_ble_example/common/extension/iterable.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

extension BluetoothServicesExt on List<BluetoothService> {
  BluetoothCharacteristic? getCharacteristicById(String characteristicId) {
    for (var service in this) {
      final characteristics = service.characteristics;
      final characteristic = characteristics.firstWhereOrNull(
        (char) => char.characteristicUuid == Guid.fromString(characteristicId),
      );

      if (characteristic != null) return characteristic;
    }

    return null;
  }
}
