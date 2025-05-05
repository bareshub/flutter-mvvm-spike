// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Activity {

/// e.g. 'Glacier Trekking and Ice Climbing'
 String get name;/// e.g. 'Embark on a thrilling adventure exploring the awe-inspiring glaciers of Alaska. Hike across the icy terrain, marvel at the deep blue crevasses, and even try your hand at ice climbing for an unforgettable experience.'
 String get description;/// e.g. 'Matanuska Glacier or Mendenhall Glacier'
 String get locationName;/// Duration in days.
/// e.g. 8
 int get duration;/// e.g. 'morning'
 TimeOfDay get timeOfDay;/// e.g. false
 bool get familyFriendly;/// e.g. 4
 int get price;/// e.g. 'alaska'
 String get destinationRef;/// e.g. 'glacier-trekking-and-ice-climbing'
 String get ref;/// e.g. 'https://storage.googleapis.com/tripedia-images/activities/alaska_glacier-trekking-and-ice-climbing.jpg'
 String get imageUrl;
/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCopyWith<Activity> get copyWith => _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Activity&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.timeOfDay, timeOfDay) || other.timeOfDay == timeOfDay)&&(identical(other.familyFriendly, familyFriendly) || other.familyFriendly == familyFriendly)&&(identical(other.price, price) || other.price == price)&&(identical(other.destinationRef, destinationRef) || other.destinationRef == destinationRef)&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,locationName,duration,timeOfDay,familyFriendly,price,destinationRef,ref,imageUrl);

@override
String toString() {
  return 'Activity(name: $name, description: $description, locationName: $locationName, duration: $duration, timeOfDay: $timeOfDay, familyFriendly: $familyFriendly, price: $price, destinationRef: $destinationRef, ref: $ref, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res>  {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) = _$ActivityCopyWithImpl;
@useResult
$Res call({
 String name, String description, String locationName, int duration, TimeOfDay timeOfDay, bool familyFriendly, int price, String destinationRef, String ref, String imageUrl
});




}
/// @nodoc
class _$ActivityCopyWithImpl<$Res>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? locationName = null,Object? duration = null,Object? timeOfDay = null,Object? familyFriendly = null,Object? price = null,Object? destinationRef = null,Object? ref = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,timeOfDay: null == timeOfDay ? _self.timeOfDay : timeOfDay // ignore: cast_nullable_to_non_nullable
as TimeOfDay,familyFriendly: null == familyFriendly ? _self.familyFriendly : familyFriendly // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,destinationRef: null == destinationRef ? _self.destinationRef : destinationRef // ignore: cast_nullable_to_non_nullable
as String,ref: null == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Activity implements Activity {
  const _Activity({required this.name, required this.description, required this.locationName, required this.duration, required this.timeOfDay, required this.familyFriendly, required this.price, required this.destinationRef, required this.ref, required this.imageUrl});
  factory _Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

/// e.g. 'Glacier Trekking and Ice Climbing'
@override final  String name;
/// e.g. 'Embark on a thrilling adventure exploring the awe-inspiring glaciers of Alaska. Hike across the icy terrain, marvel at the deep blue crevasses, and even try your hand at ice climbing for an unforgettable experience.'
@override final  String description;
/// e.g. 'Matanuska Glacier or Mendenhall Glacier'
@override final  String locationName;
/// Duration in days.
/// e.g. 8
@override final  int duration;
/// e.g. 'morning'
@override final  TimeOfDay timeOfDay;
/// e.g. false
@override final  bool familyFriendly;
/// e.g. 4
@override final  int price;
/// e.g. 'alaska'
@override final  String destinationRef;
/// e.g. 'glacier-trekking-and-ice-climbing'
@override final  String ref;
/// e.g. 'https://storage.googleapis.com/tripedia-images/activities/alaska_glacier-trekking-and-ice-climbing.jpg'
@override final  String imageUrl;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityCopyWith<_Activity> get copyWith => __$ActivityCopyWithImpl<_Activity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activity&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.timeOfDay, timeOfDay) || other.timeOfDay == timeOfDay)&&(identical(other.familyFriendly, familyFriendly) || other.familyFriendly == familyFriendly)&&(identical(other.price, price) || other.price == price)&&(identical(other.destinationRef, destinationRef) || other.destinationRef == destinationRef)&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,locationName,duration,timeOfDay,familyFriendly,price,destinationRef,ref,imageUrl);

@override
String toString() {
  return 'Activity(name: $name, description: $description, locationName: $locationName, duration: $duration, timeOfDay: $timeOfDay, familyFriendly: $familyFriendly, price: $price, destinationRef: $destinationRef, ref: $ref, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) = __$ActivityCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String locationName, int duration, TimeOfDay timeOfDay, bool familyFriendly, int price, String destinationRef, String ref, String imageUrl
});




}
/// @nodoc
class __$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? locationName = null,Object? duration = null,Object? timeOfDay = null,Object? familyFriendly = null,Object? price = null,Object? destinationRef = null,Object? ref = null,Object? imageUrl = null,}) {
  return _then(_Activity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,timeOfDay: null == timeOfDay ? _self.timeOfDay : timeOfDay // ignore: cast_nullable_to_non_nullable
as TimeOfDay,familyFriendly: null == familyFriendly ? _self.familyFriendly : familyFriendly // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,destinationRef: null == destinationRef ? _self.destinationRef : destinationRef // ignore: cast_nullable_to_non_nullable
as String,ref: null == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
