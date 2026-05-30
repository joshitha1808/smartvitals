import 'dart:async';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/services/ble_service.dart';

part 'ble_scan_viewmodel.g.dart';

@riverpod
class BleScanViewModel extends _$BleScanViewModel {
  late final BleService _bleService;
  StreamSubscription<Either<String, DiscoveredDevice>>? _scanSubscription;
  String? _errorMessage;
  bool _isScanning = false;
  String? get errorMessage => _errorMessage;
  bool get isScanning => _isScanning;
  @override
  List<DiscoveredDevice> build() {
    _bleService = BleService();

    ref.onDispose(() {
      stopScan();
    });
    return [];
  }

  // START SCAN
  void startScan() {
    stopScan(); // ensure clean start
    _isScanning = true;
    _errorMessage = null;
    state = [];
    final Map<String, DiscoveredDevice> deviceMap = {};
    _scanSubscription = _bleService.scanDevices().listen((event) {
      event.match(
        (failure) {
          _errorMessage = failure;
        },
        (device) {
          deviceMap[device.id] = device;

          final devices = deviceMap.values.toList()
            ..sort((a, b) => b.rssi.compareTo(a.rssi));
          state = devices;
        },
      );
    });
  }

  //STOP SCAN
  void stopScan() {
    _isScanning = false;
    _scanSubscription?.cancel();
    _scanSubscription = null;
  }

  //CLEAR DEVICES
  void clearDevices() {
    state = [];
    _errorMessage = null;
  }
}
