import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BleService {
  // BLE controller object
  final FlutterReactiveBle _ble = FlutterReactiveBle();
  // Scan nearby BLE devices
  Stream<DiscoveredDevice> scanDevices() {
    return _ble.scanForDevices(
      // Empty means scan all BLE devices
      withServices: [],
      // Fast scanning mode
      scanMode: ScanMode.lowLatency,
    );
  }
}
