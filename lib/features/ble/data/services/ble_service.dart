import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:fpdart/fpdart.dart';

class BleService {
  final FlutterReactiveBle _ble = FlutterReactiveBle();
  Stream<Either<String, DiscoveredDevice>> scanDevices() async* {
    try {
      yield* _ble
          .scanForDevices(withServices: [], scanMode: ScanMode.lowLatency)
          .map((device) => right(device));
    } catch (e) {
      yield left('Failed to scan BLE devices');
    }
  }
}
