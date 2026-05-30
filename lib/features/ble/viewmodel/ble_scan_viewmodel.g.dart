// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_scan_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BleScanViewModel)
final bleScanViewModelProvider = BleScanViewModelProvider._();

final class BleScanViewModelProvider
    extends $NotifierProvider<BleScanViewModel, List<DiscoveredDevice>> {
  BleScanViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bleScanViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bleScanViewModelHash();

  @$internal
  @override
  BleScanViewModel create() => BleScanViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<DiscoveredDevice> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<DiscoveredDevice>>(value),
    );
  }
}

String _$bleScanViewModelHash() => r'374753d53e8ef131bc1fcc752cb7efe35660c012';

abstract class _$BleScanViewModel extends $Notifier<List<DiscoveredDevice>> {
  List<DiscoveredDevice> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<List<DiscoveredDevice>, List<DiscoveredDevice>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<DiscoveredDevice>, List<DiscoveredDevice>>,
              List<DiscoveredDevice>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
