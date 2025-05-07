// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itinerary_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItineraryConfig {

/// [Continent] name
 String? get continent;/// Start date (check in)
 DateTime? get startDate;/// End date (check out)
 DateTime? get endDate;/// Number of guests
 int? get guests;/// Selected [Destination] reference
 String? get destination;/// Selected [Activity] references
 List<String> get activities;
/// Create a copy of ItineraryConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItineraryConfigCopyWith<ItineraryConfig> get copyWith => _$ItineraryConfigCopyWithImpl<ItineraryConfig>(this as ItineraryConfig, _$identity);

  /// Serializes this ItineraryConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItineraryConfig&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.guests, guests) || other.guests == guests)&&(identical(other.destination, destination) || other.destination == destination)&&const DeepCollectionEquality().equals(other.activities, activities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,continent,startDate,endDate,guests,destination,const DeepCollectionEquality().hash(activities));

@override
String toString() {
  return 'ItineraryConfig(continent: $continent, startDate: $startDate, endDate: $endDate, guests: $guests, destination: $destination, activities: $activities)';
}


}

/// @nodoc
abstract mixin class $ItineraryConfigCopyWith<$Res>  {
  factory $ItineraryConfigCopyWith(ItineraryConfig value, $Res Function(ItineraryConfig) _then) = _$ItineraryConfigCopyWithImpl;
@useResult
$Res call({
 String? continent, DateTime? startDate, DateTime? endDate, int? guests, String? destination, List<String> activities
});




}
/// @nodoc
class _$ItineraryConfigCopyWithImpl<$Res>
    implements $ItineraryConfigCopyWith<$Res> {
  _$ItineraryConfigCopyWithImpl(this._self, this._then);

  final ItineraryConfig _self;
  final $Res Function(ItineraryConfig) _then;

/// Create a copy of ItineraryConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? continent = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? guests = freezed,Object? destination = freezed,Object? activities = null,}) {
  return _then(_self.copyWith(
continent: freezed == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,guests: freezed == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as int?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String?,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ItineraryConfig implements ItineraryConfig {
  const _ItineraryConfig({this.continent, this.startDate, this.endDate, this.guests, this.destination, final  List<String> activities = const []}): _activities = activities;
  factory _ItineraryConfig.fromJson(Map<String, dynamic> json) => _$ItineraryConfigFromJson(json);

/// [Continent] name
@override final  String? continent;
/// Start date (check in)
@override final  DateTime? startDate;
/// End date (check out)
@override final  DateTime? endDate;
/// Number of guests
@override final  int? guests;
/// Selected [Destination] reference
@override final  String? destination;
/// Selected [Activity] references
 final  List<String> _activities;
/// Selected [Activity] references
@override@JsonKey() List<String> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}


/// Create a copy of ItineraryConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItineraryConfigCopyWith<_ItineraryConfig> get copyWith => __$ItineraryConfigCopyWithImpl<_ItineraryConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItineraryConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItineraryConfig&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.guests, guests) || other.guests == guests)&&(identical(other.destination, destination) || other.destination == destination)&&const DeepCollectionEquality().equals(other._activities, _activities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,continent,startDate,endDate,guests,destination,const DeepCollectionEquality().hash(_activities));

@override
String toString() {
  return 'ItineraryConfig(continent: $continent, startDate: $startDate, endDate: $endDate, guests: $guests, destination: $destination, activities: $activities)';
}


}

/// @nodoc
abstract mixin class _$ItineraryConfigCopyWith<$Res> implements $ItineraryConfigCopyWith<$Res> {
  factory _$ItineraryConfigCopyWith(_ItineraryConfig value, $Res Function(_ItineraryConfig) _then) = __$ItineraryConfigCopyWithImpl;
@override @useResult
$Res call({
 String? continent, DateTime? startDate, DateTime? endDate, int? guests, String? destination, List<String> activities
});




}
/// @nodoc
class __$ItineraryConfigCopyWithImpl<$Res>
    implements _$ItineraryConfigCopyWith<$Res> {
  __$ItineraryConfigCopyWithImpl(this._self, this._then);

  final _ItineraryConfig _self;
  final $Res Function(_ItineraryConfig) _then;

/// Create a copy of ItineraryConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? continent = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? guests = freezed,Object? destination = freezed,Object? activities = null,}) {
  return _then(_ItineraryConfig(
continent: freezed == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,guests: freezed == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as int?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String?,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
