// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherResultState {
  WeatherCategory? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherResultStateCopyWith<WeatherResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResultStateCopyWith<$Res> {
  factory $WeatherResultStateCopyWith(
          WeatherResultState value, $Res Function(WeatherResultState) then) =
      _$WeatherResultStateCopyWithImpl<$Res, WeatherResultState>;
  @useResult
  $Res call({WeatherCategory? category});
}

/// @nodoc
class _$WeatherResultStateCopyWithImpl<$Res, $Val extends WeatherResultState>
    implements $WeatherResultStateCopyWith<$Res> {
  _$WeatherResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as WeatherCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherResultStateCopyWith<$Res>
    implements $WeatherResultStateCopyWith<$Res> {
  factory _$$_WeatherResultStateCopyWith(_$_WeatherResultState value,
          $Res Function(_$_WeatherResultState) then) =
      __$$_WeatherResultStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherCategory? category});
}

/// @nodoc
class __$$_WeatherResultStateCopyWithImpl<$Res>
    extends _$WeatherResultStateCopyWithImpl<$Res, _$_WeatherResultState>
    implements _$$_WeatherResultStateCopyWith<$Res> {
  __$$_WeatherResultStateCopyWithImpl(
      _$_WeatherResultState _value, $Res Function(_$_WeatherResultState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_WeatherResultState(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as WeatherCategory?,
    ));
  }
}

/// @nodoc

class _$_WeatherResultState implements _WeatherResultState {
  const _$_WeatherResultState({this.category = null});

  @override
  @JsonKey()
  final WeatherCategory? category;

  @override
  String toString() {
    return 'WeatherResultState(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherResultState &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherResultStateCopyWith<_$_WeatherResultState> get copyWith =>
      __$$_WeatherResultStateCopyWithImpl<_$_WeatherResultState>(
          this, _$identity);
}

abstract class _WeatherResultState implements WeatherResultState {
  const factory _WeatherResultState({final WeatherCategory? category}) =
      _$_WeatherResultState;

  @override
  WeatherCategory? get category;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherResultStateCopyWith<_$_WeatherResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
