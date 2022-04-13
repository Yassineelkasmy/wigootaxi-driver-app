// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pick_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickUpEventTearOff {
  const _$PickUpEventTearOff();

  StartedTyping startedTyping() {
    return const StartedTyping();
  }

  NearbyQueryChanged nearbyQueryChanged(String query) {
    return NearbyQueryChanged(
      query,
    );
  }

  NearbyLocationsRequested nearbyLocationsRequested() {
    return const NearbyLocationsRequested();
  }

  PickupChoosen pickupChoosen(NearbySearch pickup) {
    return PickupChoosen(
      pickup,
    );
  }

  DropoffChoosen dropoffChoosen(NearbySearch dropoff) {
    return DropoffChoosen(
      dropoff,
    );
  }
}

/// @nodoc
const $PickUpEvent = _$PickUpEventTearOff();

/// @nodoc
mixin _$PickUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) nearbyQueryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickUpEventCopyWith<$Res> {
  factory $PickUpEventCopyWith(
          PickUpEvent value, $Res Function(PickUpEvent) then) =
      _$PickUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickUpEventCopyWithImpl<$Res> implements $PickUpEventCopyWith<$Res> {
  _$PickUpEventCopyWithImpl(this._value, this._then);

  final PickUpEvent _value;
  // ignore: unused_field
  final $Res Function(PickUpEvent) _then;
}

/// @nodoc
abstract class $StartedTypingCopyWith<$Res> {
  factory $StartedTypingCopyWith(
          StartedTyping value, $Res Function(StartedTyping) then) =
      _$StartedTypingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedTypingCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $StartedTypingCopyWith<$Res> {
  _$StartedTypingCopyWithImpl(
      StartedTyping _value, $Res Function(StartedTyping) _then)
      : super(_value, (v) => _then(v as StartedTyping));

  @override
  StartedTyping get _value => super._value as StartedTyping;
}

/// @nodoc

class _$StartedTyping with DiagnosticableTreeMixin implements StartedTyping {
  const _$StartedTyping();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.startedTyping()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PickUpEvent.startedTyping'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartedTyping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) nearbyQueryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
  }) {
    return startedTyping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
  }) {
    return startedTyping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (startedTyping != null) {
      return startedTyping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
  }) {
    return startedTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
  }) {
    return startedTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (startedTyping != null) {
      return startedTyping(this);
    }
    return orElse();
  }
}

abstract class StartedTyping implements PickUpEvent {
  const factory StartedTyping() = _$StartedTyping;
}

/// @nodoc
abstract class $NearbyQueryChangedCopyWith<$Res> {
  factory $NearbyQueryChangedCopyWith(
          NearbyQueryChanged value, $Res Function(NearbyQueryChanged) then) =
      _$NearbyQueryChangedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$NearbyQueryChangedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $NearbyQueryChangedCopyWith<$Res> {
  _$NearbyQueryChangedCopyWithImpl(
      NearbyQueryChanged _value, $Res Function(NearbyQueryChanged) _then)
      : super(_value, (v) => _then(v as NearbyQueryChanged));

  @override
  NearbyQueryChanged get _value => super._value as NearbyQueryChanged;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(NearbyQueryChanged(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NearbyQueryChanged
    with DiagnosticableTreeMixin
    implements NearbyQueryChanged {
  const _$NearbyQueryChanged(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.nearbyQueryChanged(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.nearbyQueryChanged'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NearbyQueryChanged &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  $NearbyQueryChangedCopyWith<NearbyQueryChanged> get copyWith =>
      _$NearbyQueryChangedCopyWithImpl<NearbyQueryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) nearbyQueryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
  }) {
    return nearbyQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
  }) {
    return nearbyQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (nearbyQueryChanged != null) {
      return nearbyQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
  }) {
    return nearbyQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
  }) {
    return nearbyQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (nearbyQueryChanged != null) {
      return nearbyQueryChanged(this);
    }
    return orElse();
  }
}

abstract class NearbyQueryChanged implements PickUpEvent {
  const factory NearbyQueryChanged(String query) = _$NearbyQueryChanged;

  String get query;
  @JsonKey(ignore: true)
  $NearbyQueryChangedCopyWith<NearbyQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyLocationsRequestedCopyWith<$Res> {
  factory $NearbyLocationsRequestedCopyWith(NearbyLocationsRequested value,
          $Res Function(NearbyLocationsRequested) then) =
      _$NearbyLocationsRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NearbyLocationsRequestedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $NearbyLocationsRequestedCopyWith<$Res> {
  _$NearbyLocationsRequestedCopyWithImpl(NearbyLocationsRequested _value,
      $Res Function(NearbyLocationsRequested) _then)
      : super(_value, (v) => _then(v as NearbyLocationsRequested));

  @override
  NearbyLocationsRequested get _value =>
      super._value as NearbyLocationsRequested;
}

/// @nodoc

class _$NearbyLocationsRequested
    with DiagnosticableTreeMixin
    implements NearbyLocationsRequested {
  const _$NearbyLocationsRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.nearbyLocationsRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PickUpEvent.nearbyLocationsRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NearbyLocationsRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) nearbyQueryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
  }) {
    return nearbyLocationsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
  }) {
    return nearbyLocationsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (nearbyLocationsRequested != null) {
      return nearbyLocationsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
  }) {
    return nearbyLocationsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
  }) {
    return nearbyLocationsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (nearbyLocationsRequested != null) {
      return nearbyLocationsRequested(this);
    }
    return orElse();
  }
}

abstract class NearbyLocationsRequested implements PickUpEvent {
  const factory NearbyLocationsRequested() = _$NearbyLocationsRequested;
}

/// @nodoc
abstract class $PickupChoosenCopyWith<$Res> {
  factory $PickupChoosenCopyWith(
          PickupChoosen value, $Res Function(PickupChoosen) then) =
      _$PickupChoosenCopyWithImpl<$Res>;
  $Res call({NearbySearch pickup});
}

/// @nodoc
class _$PickupChoosenCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $PickupChoosenCopyWith<$Res> {
  _$PickupChoosenCopyWithImpl(
      PickupChoosen _value, $Res Function(PickupChoosen) _then)
      : super(_value, (v) => _then(v as PickupChoosen));

  @override
  PickupChoosen get _value => super._value as PickupChoosen;

  @override
  $Res call({
    Object? pickup = freezed,
  }) {
    return _then(PickupChoosen(
      pickup == freezed
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
    ));
  }
}

/// @nodoc

class _$PickupChoosen with DiagnosticableTreeMixin implements PickupChoosen {
  const _$PickupChoosen(this.pickup);

  @override
  final NearbySearch pickup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.pickupChoosen(pickup: $pickup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.pickupChoosen'))
      ..add(DiagnosticsProperty('pickup', pickup));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickupChoosen &&
            const DeepCollectionEquality().equals(other.pickup, pickup));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pickup));

  @JsonKey(ignore: true)
  @override
  $PickupChoosenCopyWith<PickupChoosen> get copyWith =>
      _$PickupChoosenCopyWithImpl<PickupChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) nearbyQueryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
  }) {
    return pickupChoosen(pickup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
  }) {
    return pickupChoosen?.call(pickup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (pickupChoosen != null) {
      return pickupChoosen(pickup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
  }) {
    return pickupChoosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
  }) {
    return pickupChoosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (pickupChoosen != null) {
      return pickupChoosen(this);
    }
    return orElse();
  }
}

abstract class PickupChoosen implements PickUpEvent {
  const factory PickupChoosen(NearbySearch pickup) = _$PickupChoosen;

  NearbySearch get pickup;
  @JsonKey(ignore: true)
  $PickupChoosenCopyWith<PickupChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropoffChoosenCopyWith<$Res> {
  factory $DropoffChoosenCopyWith(
          DropoffChoosen value, $Res Function(DropoffChoosen) then) =
      _$DropoffChoosenCopyWithImpl<$Res>;
  $Res call({NearbySearch dropoff});
}

/// @nodoc
class _$DropoffChoosenCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $DropoffChoosenCopyWith<$Res> {
  _$DropoffChoosenCopyWithImpl(
      DropoffChoosen _value, $Res Function(DropoffChoosen) _then)
      : super(_value, (v) => _then(v as DropoffChoosen));

  @override
  DropoffChoosen get _value => super._value as DropoffChoosen;

  @override
  $Res call({
    Object? dropoff = freezed,
  }) {
    return _then(DropoffChoosen(
      dropoff == freezed
          ? _value.dropoff
          : dropoff // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
    ));
  }
}

/// @nodoc

class _$DropoffChoosen with DiagnosticableTreeMixin implements DropoffChoosen {
  const _$DropoffChoosen(this.dropoff);

  @override
  final NearbySearch dropoff;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.dropoffChoosen(dropoff: $dropoff)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.dropoffChoosen'))
      ..add(DiagnosticsProperty('dropoff', dropoff));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DropoffChoosen &&
            const DeepCollectionEquality().equals(other.dropoff, dropoff));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dropoff));

  @JsonKey(ignore: true)
  @override
  $DropoffChoosenCopyWith<DropoffChoosen> get copyWith =>
      _$DropoffChoosenCopyWithImpl<DropoffChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) nearbyQueryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
  }) {
    return dropoffChoosen(dropoff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
  }) {
    return dropoffChoosen?.call(dropoff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? nearbyQueryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (dropoffChoosen != null) {
      return dropoffChoosen(dropoff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
  }) {
    return dropoffChoosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
  }) {
    return dropoffChoosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    required TResult orElse(),
  }) {
    if (dropoffChoosen != null) {
      return dropoffChoosen(this);
    }
    return orElse();
  }
}

abstract class DropoffChoosen implements PickUpEvent {
  const factory DropoffChoosen(NearbySearch dropoff) = _$DropoffChoosen;

  NearbySearch get dropoff;
  @JsonKey(ignore: true)
  $DropoffChoosenCopyWith<DropoffChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}
