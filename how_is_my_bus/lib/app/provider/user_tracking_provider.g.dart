// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tracking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appRouter)
final appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return appRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$appRouterHash() => r'b855c90ae37d4b7e355c98aae9b7c827ff3b87cc';

@ProviderFor(trackingService)
final trackingServiceProvider = TrackingServiceProvider._();

final class TrackingServiceProvider
    extends
        $FunctionalProvider<TrackingService, TrackingService, TrackingService>
    with $Provider<TrackingService> {
  TrackingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trackingServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trackingServiceHash();

  @$internal
  @override
  $ProviderElement<TrackingService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TrackingService create(Ref ref) {
    return trackingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TrackingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TrackingService>(value),
    );
  }
}

String _$trackingServiceHash() => r'0a2ad69e6a825fdb0302c8c9d1263be097ed22b3';

@ProviderFor(busTracking)
final busTrackingProvider = BusTrackingFamily._();

final class BusTrackingProvider
    extends
        $FunctionalProvider<
          AsyncValue<TrackedBus>,
          TrackedBus,
          Stream<TrackedBus>
        >
    with $FutureModifier<TrackedBus>, $StreamProvider<TrackedBus> {
  BusTrackingProvider._({
    required BusTrackingFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'busTrackingProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$busTrackingHash();

  @override
  String toString() {
    return r'busTrackingProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<TrackedBus> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<TrackedBus> create(Ref ref) {
    final argument = this.argument as String;
    return busTracking(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BusTrackingProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$busTrackingHash() => r'b1d63826437d5fddc9361d1916b4c89e8707bc08';

final class BusTrackingFamily extends $Family
    with $FunctionalFamilyOverride<Stream<TrackedBus>, String> {
  BusTrackingFamily._()
    : super(
        retry: null,
        name: r'busTrackingProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BusTrackingProvider call(String busId) =>
      BusTrackingProvider._(argument: busId, from: this);

  @override
  String toString() => r'busTrackingProvider';
}
