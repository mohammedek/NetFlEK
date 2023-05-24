// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initilize value) initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initilize value)? initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initilize value)? initilize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitilizeCopyWith<$Res> {
  factory _$$InitilizeCopyWith(
          _$Initilize value, $Res Function(_$Initilize) then) =
      __$$InitilizeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitilizeCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$Initilize>
    implements _$$InitilizeCopyWith<$Res> {
  __$$InitilizeCopyWithImpl(
      _$Initilize _value, $Res Function(_$Initilize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initilize implements Initilize {
  const _$Initilize();

  @override
  String toString() {
    return 'FastLaughEvent.initilize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initilize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
  }) {
    return initilize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
  }) {
    return initilize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initilize value) initilize,
  }) {
    return initilize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initilize value)? initilize,
  }) {
    return initilize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initilize value)? initilize,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize(this);
    }
    return orElse();
  }
}

abstract class Initilize implements FastLaughEvent {
  const factory Initilize() = _$Initilize;
}

/// @nodoc
mixin _$FastLaughState {
  List<Downloads> get videosList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call({List<Downloads> videosList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videosList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      videosList: null == videosList
          ? _value.videosList
          : videosList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Downloads> videosList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videosList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      videosList: null == videosList
          ? _value._videosList
          : videosList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Downloads> videosList,
      required this.isLoading,
      required this.isError})
      : _videosList = videosList;

  final List<Downloads> _videosList;
  @override
  List<Downloads> get videosList {
    if (_videosList is EqualUnmodifiableListView) return _videosList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videosList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastLaughState(videosList: $videosList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._videosList, _videosList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_videosList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements FastLaughState {
  const factory _Initial(
      {required final List<Downloads> videosList,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  List<Downloads> get videosList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
