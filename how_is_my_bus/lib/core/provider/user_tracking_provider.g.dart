// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tracking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trackingServiceHash() => r'0a2ad69e6a825fdb0302c8c9d1263be097ed22b3';

/// See also [trackingService].
@ProviderFor(trackingService)
final trackingServiceProvider = AutoDisposeProvider<TrackingService>.internal(
  trackingService,
  name: r'trackingServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$trackingServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TrackingServiceRef = AutoDisposeProviderRef<TrackingService>;
String _$busTrackingHash() => r'b1d63826437d5fddc9361d1916b4c89e8707bc08';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [busTracking].
@ProviderFor(busTracking)
const busTrackingProvider = BusTrackingFamily();

/// See also [busTracking].
class BusTrackingFamily extends Family<AsyncValue<TrackedBus>> {
  /// See also [busTracking].
  const BusTrackingFamily();

  /// See also [busTracking].
  BusTrackingProvider call(String busId) {
    return BusTrackingProvider(busId);
  }

  @override
  BusTrackingProvider getProviderOverride(
    covariant BusTrackingProvider provider,
  ) {
    return call(provider.busId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'busTrackingProvider';
}

/// See also [busTracking].
class BusTrackingProvider extends AutoDisposeStreamProvider<TrackedBus> {
  /// See also [busTracking].
  BusTrackingProvider(String busId)
    : this._internal(
        (ref) => busTracking(ref as BusTrackingRef, busId),
        from: busTrackingProvider,
        name: r'busTrackingProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$busTrackingHash,
        dependencies: BusTrackingFamily._dependencies,
        allTransitiveDependencies: BusTrackingFamily._allTransitiveDependencies,
        busId: busId,
      );

  BusTrackingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.busId,
  }) : super.internal();

  final String busId;

  @override
  Override overrideWith(
    Stream<TrackedBus> Function(BusTrackingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BusTrackingProvider._internal(
        (ref) => create(ref as BusTrackingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        busId: busId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<TrackedBus> createElement() {
    return _BusTrackingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BusTrackingProvider && other.busId == busId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, busId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BusTrackingRef on AutoDisposeStreamProviderRef<TrackedBus> {
  /// The parameter `busId` of this provider.
  String get busId;
}

class _BusTrackingProviderElement
    extends AutoDisposeStreamProviderElement<TrackedBus>
    with BusTrackingRef {
  _BusTrackingProviderElement(super.provider);

  @override
  String get busId => (origin as BusTrackingProvider).busId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
