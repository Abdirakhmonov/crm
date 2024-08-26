// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_subject_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminSubjectManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getOne,
    required TResult Function(String name) add,
    required TResult Function(String id, String name) edit,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getOne,
    TResult? Function(String name)? add,
    TResult? Function(String id, String name)? edit,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getOne,
    TResult Function(String name)? add,
    TResult Function(String id, String name)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSubjectsEvent value) getAll,
    required TResult Function(GetOneSubjectEvent value) getOne,
    required TResult Function(AddSubjectEvent value) add,
    required TResult Function(EditSubjectEvent value) edit,
    required TResult Function(DeleteSubjectsEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllSubjectsEvent value)? getAll,
    TResult? Function(GetOneSubjectEvent value)? getOne,
    TResult? Function(AddSubjectEvent value)? add,
    TResult? Function(EditSubjectEvent value)? edit,
    TResult? Function(DeleteSubjectsEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSubjectsEvent value)? getAll,
    TResult Function(GetOneSubjectEvent value)? getOne,
    TResult Function(AddSubjectEvent value)? add,
    TResult Function(EditSubjectEvent value)? edit,
    TResult Function(DeleteSubjectsEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSubjectManagementEventCopyWith<$Res> {
  factory $AdminSubjectManagementEventCopyWith(
          AdminSubjectManagementEvent value,
          $Res Function(AdminSubjectManagementEvent) then) =
      _$AdminSubjectManagementEventCopyWithImpl<$Res,
          AdminSubjectManagementEvent>;
}

/// @nodoc
class _$AdminSubjectManagementEventCopyWithImpl<$Res,
        $Val extends AdminSubjectManagementEvent>
    implements $AdminSubjectManagementEventCopyWith<$Res> {
  _$AdminSubjectManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllSubjectsEventImplCopyWith<$Res> {
  factory _$$GetAllSubjectsEventImplCopyWith(_$GetAllSubjectsEventImpl value,
          $Res Function(_$GetAllSubjectsEventImpl) then) =
      __$$GetAllSubjectsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllSubjectsEventImplCopyWithImpl<$Res>
    extends _$AdminSubjectManagementEventCopyWithImpl<$Res,
        _$GetAllSubjectsEventImpl>
    implements _$$GetAllSubjectsEventImplCopyWith<$Res> {
  __$$GetAllSubjectsEventImplCopyWithImpl(_$GetAllSubjectsEventImpl _value,
      $Res Function(_$GetAllSubjectsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllSubjectsEventImpl implements GetAllSubjectsEvent {
  const _$GetAllSubjectsEventImpl();

  @override
  String toString() {
    return 'AdminSubjectManagementEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSubjectsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getOne,
    required TResult Function(String name) add,
    required TResult Function(String id, String name) edit,
    required TResult Function(String id) delete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getOne,
    TResult? Function(String name)? add,
    TResult? Function(String id, String name)? edit,
    TResult? Function(String id)? delete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getOne,
    TResult Function(String name)? add,
    TResult Function(String id, String name)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSubjectsEvent value) getAll,
    required TResult Function(GetOneSubjectEvent value) getOne,
    required TResult Function(AddSubjectEvent value) add,
    required TResult Function(EditSubjectEvent value) edit,
    required TResult Function(DeleteSubjectsEvent value) delete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllSubjectsEvent value)? getAll,
    TResult? Function(GetOneSubjectEvent value)? getOne,
    TResult? Function(AddSubjectEvent value)? add,
    TResult? Function(EditSubjectEvent value)? edit,
    TResult? Function(DeleteSubjectsEvent value)? delete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSubjectsEvent value)? getAll,
    TResult Function(GetOneSubjectEvent value)? getOne,
    TResult Function(AddSubjectEvent value)? add,
    TResult Function(EditSubjectEvent value)? edit,
    TResult Function(DeleteSubjectsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class GetAllSubjectsEvent implements AdminSubjectManagementEvent {
  const factory GetAllSubjectsEvent() = _$GetAllSubjectsEventImpl;
}

/// @nodoc
abstract class _$$GetOneSubjectEventImplCopyWith<$Res> {
  factory _$$GetOneSubjectEventImplCopyWith(_$GetOneSubjectEventImpl value,
          $Res Function(_$GetOneSubjectEventImpl) then) =
      __$$GetOneSubjectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetOneSubjectEventImplCopyWithImpl<$Res>
    extends _$AdminSubjectManagementEventCopyWithImpl<$Res,
        _$GetOneSubjectEventImpl>
    implements _$$GetOneSubjectEventImplCopyWith<$Res> {
  __$$GetOneSubjectEventImplCopyWithImpl(_$GetOneSubjectEventImpl _value,
      $Res Function(_$GetOneSubjectEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetOneSubjectEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOneSubjectEventImpl implements GetOneSubjectEvent {
  const _$GetOneSubjectEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AdminSubjectManagementEvent.getOne(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneSubjectEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneSubjectEventImplCopyWith<_$GetOneSubjectEventImpl> get copyWith =>
      __$$GetOneSubjectEventImplCopyWithImpl<_$GetOneSubjectEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getOne,
    required TResult Function(String name) add,
    required TResult Function(String id, String name) edit,
    required TResult Function(String id) delete,
  }) {
    return getOne(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getOne,
    TResult? Function(String name)? add,
    TResult? Function(String id, String name)? edit,
    TResult? Function(String id)? delete,
  }) {
    return getOne?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getOne,
    TResult Function(String name)? add,
    TResult Function(String id, String name)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getOne != null) {
      return getOne(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSubjectsEvent value) getAll,
    required TResult Function(GetOneSubjectEvent value) getOne,
    required TResult Function(AddSubjectEvent value) add,
    required TResult Function(EditSubjectEvent value) edit,
    required TResult Function(DeleteSubjectsEvent value) delete,
  }) {
    return getOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllSubjectsEvent value)? getAll,
    TResult? Function(GetOneSubjectEvent value)? getOne,
    TResult? Function(AddSubjectEvent value)? add,
    TResult? Function(EditSubjectEvent value)? edit,
    TResult? Function(DeleteSubjectsEvent value)? delete,
  }) {
    return getOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSubjectsEvent value)? getAll,
    TResult Function(GetOneSubjectEvent value)? getOne,
    TResult Function(AddSubjectEvent value)? add,
    TResult Function(EditSubjectEvent value)? edit,
    TResult Function(DeleteSubjectsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (getOne != null) {
      return getOne(this);
    }
    return orElse();
  }
}

abstract class GetOneSubjectEvent implements AdminSubjectManagementEvent {
  const factory GetOneSubjectEvent({required final String id}) =
      _$GetOneSubjectEventImpl;

  String get id;

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOneSubjectEventImplCopyWith<_$GetOneSubjectEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSubjectEventImplCopyWith<$Res> {
  factory _$$AddSubjectEventImplCopyWith(_$AddSubjectEventImpl value,
          $Res Function(_$AddSubjectEventImpl) then) =
      __$$AddSubjectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddSubjectEventImplCopyWithImpl<$Res>
    extends _$AdminSubjectManagementEventCopyWithImpl<$Res,
        _$AddSubjectEventImpl> implements _$$AddSubjectEventImplCopyWith<$Res> {
  __$$AddSubjectEventImplCopyWithImpl(
      _$AddSubjectEventImpl _value, $Res Function(_$AddSubjectEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddSubjectEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSubjectEventImpl implements AddSubjectEvent {
  const _$AddSubjectEventImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AdminSubjectManagementEvent.add(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubjectEventImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubjectEventImplCopyWith<_$AddSubjectEventImpl> get copyWith =>
      __$$AddSubjectEventImplCopyWithImpl<_$AddSubjectEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getOne,
    required TResult Function(String name) add,
    required TResult Function(String id, String name) edit,
    required TResult Function(String id) delete,
  }) {
    return add(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getOne,
    TResult? Function(String name)? add,
    TResult? Function(String id, String name)? edit,
    TResult? Function(String id)? delete,
  }) {
    return add?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getOne,
    TResult Function(String name)? add,
    TResult Function(String id, String name)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSubjectsEvent value) getAll,
    required TResult Function(GetOneSubjectEvent value) getOne,
    required TResult Function(AddSubjectEvent value) add,
    required TResult Function(EditSubjectEvent value) edit,
    required TResult Function(DeleteSubjectsEvent value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllSubjectsEvent value)? getAll,
    TResult? Function(GetOneSubjectEvent value)? getOne,
    TResult? Function(AddSubjectEvent value)? add,
    TResult? Function(EditSubjectEvent value)? edit,
    TResult? Function(DeleteSubjectsEvent value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSubjectsEvent value)? getAll,
    TResult Function(GetOneSubjectEvent value)? getOne,
    TResult Function(AddSubjectEvent value)? add,
    TResult Function(EditSubjectEvent value)? edit,
    TResult Function(DeleteSubjectsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddSubjectEvent implements AdminSubjectManagementEvent {
  const factory AddSubjectEvent({required final String name}) =
      _$AddSubjectEventImpl;

  String get name;

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSubjectEventImplCopyWith<_$AddSubjectEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditSubjectEventImplCopyWith<$Res> {
  factory _$$EditSubjectEventImplCopyWith(_$EditSubjectEventImpl value,
          $Res Function(_$EditSubjectEventImpl) then) =
      __$$EditSubjectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$EditSubjectEventImplCopyWithImpl<$Res>
    extends _$AdminSubjectManagementEventCopyWithImpl<$Res,
        _$EditSubjectEventImpl>
    implements _$$EditSubjectEventImplCopyWith<$Res> {
  __$$EditSubjectEventImplCopyWithImpl(_$EditSubjectEventImpl _value,
      $Res Function(_$EditSubjectEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$EditSubjectEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditSubjectEventImpl implements EditSubjectEvent {
  const _$EditSubjectEventImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AdminSubjectManagementEvent.edit(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubjectEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSubjectEventImplCopyWith<_$EditSubjectEventImpl> get copyWith =>
      __$$EditSubjectEventImplCopyWithImpl<_$EditSubjectEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getOne,
    required TResult Function(String name) add,
    required TResult Function(String id, String name) edit,
    required TResult Function(String id) delete,
  }) {
    return edit(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getOne,
    TResult? Function(String name)? add,
    TResult? Function(String id, String name)? edit,
    TResult? Function(String id)? delete,
  }) {
    return edit?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getOne,
    TResult Function(String name)? add,
    TResult Function(String id, String name)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSubjectsEvent value) getAll,
    required TResult Function(GetOneSubjectEvent value) getOne,
    required TResult Function(AddSubjectEvent value) add,
    required TResult Function(EditSubjectEvent value) edit,
    required TResult Function(DeleteSubjectsEvent value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllSubjectsEvent value)? getAll,
    TResult? Function(GetOneSubjectEvent value)? getOne,
    TResult? Function(AddSubjectEvent value)? add,
    TResult? Function(EditSubjectEvent value)? edit,
    TResult? Function(DeleteSubjectsEvent value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSubjectsEvent value)? getAll,
    TResult Function(GetOneSubjectEvent value)? getOne,
    TResult Function(AddSubjectEvent value)? add,
    TResult Function(EditSubjectEvent value)? edit,
    TResult Function(DeleteSubjectsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditSubjectEvent implements AdminSubjectManagementEvent {
  const factory EditSubjectEvent(
      {required final String id,
      required final String name}) = _$EditSubjectEventImpl;

  String get id;
  String get name;

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditSubjectEventImplCopyWith<_$EditSubjectEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSubjectsEventImplCopyWith<$Res> {
  factory _$$DeleteSubjectsEventImplCopyWith(_$DeleteSubjectsEventImpl value,
          $Res Function(_$DeleteSubjectsEventImpl) then) =
      __$$DeleteSubjectsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteSubjectsEventImplCopyWithImpl<$Res>
    extends _$AdminSubjectManagementEventCopyWithImpl<$Res,
        _$DeleteSubjectsEventImpl>
    implements _$$DeleteSubjectsEventImplCopyWith<$Res> {
  __$$DeleteSubjectsEventImplCopyWithImpl(_$DeleteSubjectsEventImpl _value,
      $Res Function(_$DeleteSubjectsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteSubjectsEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSubjectsEventImpl implements DeleteSubjectsEvent {
  const _$DeleteSubjectsEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AdminSubjectManagementEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubjectsEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubjectsEventImplCopyWith<_$DeleteSubjectsEventImpl> get copyWith =>
      __$$DeleteSubjectsEventImplCopyWithImpl<_$DeleteSubjectsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getOne,
    required TResult Function(String name) add,
    required TResult Function(String id, String name) edit,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getOne,
    TResult? Function(String name)? add,
    TResult? Function(String id, String name)? edit,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getOne,
    TResult Function(String name)? add,
    TResult Function(String id, String name)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSubjectsEvent value) getAll,
    required TResult Function(GetOneSubjectEvent value) getOne,
    required TResult Function(AddSubjectEvent value) add,
    required TResult Function(EditSubjectEvent value) edit,
    required TResult Function(DeleteSubjectsEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllSubjectsEvent value)? getAll,
    TResult? Function(GetOneSubjectEvent value)? getOne,
    TResult? Function(AddSubjectEvent value)? add,
    TResult? Function(EditSubjectEvent value)? edit,
    TResult? Function(DeleteSubjectsEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSubjectsEvent value)? getAll,
    TResult Function(GetOneSubjectEvent value)? getOne,
    TResult Function(AddSubjectEvent value)? add,
    TResult Function(EditSubjectEvent value)? edit,
    TResult Function(DeleteSubjectsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteSubjectsEvent implements AdminSubjectManagementEvent {
  const factory DeleteSubjectsEvent({required final String id}) =
      _$DeleteSubjectsEventImpl;

  String get id;

  /// Create a copy of AdminSubjectManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteSubjectsEventImplCopyWith<_$DeleteSubjectsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminSubjectManagementState {
  List<Subject>? get subjects => throw _privateConstructorUsedError;
  AdminSubjectManagementStatus get adminSubjectManagementStatus =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AdminSubjectManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminSubjectManagementStateCopyWith<AdminSubjectManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSubjectManagementStateCopyWith<$Res> {
  factory $AdminSubjectManagementStateCopyWith(
          AdminSubjectManagementState value,
          $Res Function(AdminSubjectManagementState) then) =
      _$AdminSubjectManagementStateCopyWithImpl<$Res,
          AdminSubjectManagementState>;
  @useResult
  $Res call(
      {List<Subject>? subjects,
      AdminSubjectManagementStatus adminSubjectManagementStatus,
      String? error});
}

/// @nodoc
class _$AdminSubjectManagementStateCopyWithImpl<$Res,
        $Val extends AdminSubjectManagementState>
    implements $AdminSubjectManagementStateCopyWith<$Res> {
  _$AdminSubjectManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminSubjectManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
    Object? adminSubjectManagementStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
      adminSubjectManagementStatus: null == adminSubjectManagementStatus
          ? _value.adminSubjectManagementStatus
          : adminSubjectManagementStatus // ignore: cast_nullable_to_non_nullable
              as AdminSubjectManagementStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminSubjectManagementStateImplCopyWith<$Res>
    implements $AdminSubjectManagementStateCopyWith<$Res> {
  factory _$$AdminSubjectManagementStateImplCopyWith(
          _$AdminSubjectManagementStateImpl value,
          $Res Function(_$AdminSubjectManagementStateImpl) then) =
      __$$AdminSubjectManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Subject>? subjects,
      AdminSubjectManagementStatus adminSubjectManagementStatus,
      String? error});
}

/// @nodoc
class __$$AdminSubjectManagementStateImplCopyWithImpl<$Res>
    extends _$AdminSubjectManagementStateCopyWithImpl<$Res,
        _$AdminSubjectManagementStateImpl>
    implements _$$AdminSubjectManagementStateImplCopyWith<$Res> {
  __$$AdminSubjectManagementStateImplCopyWithImpl(
      _$AdminSubjectManagementStateImpl _value,
      $Res Function(_$AdminSubjectManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminSubjectManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
    Object? adminSubjectManagementStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$AdminSubjectManagementStateImpl(
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
      adminSubjectManagementStatus: null == adminSubjectManagementStatus
          ? _value.adminSubjectManagementStatus
          : adminSubjectManagementStatus // ignore: cast_nullable_to_non_nullable
              as AdminSubjectManagementStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminSubjectManagementStateImpl
    implements _AdminSubjectManagementState {
  const _$AdminSubjectManagementStateImpl(
      {final List<Subject>? subjects,
      this.adminSubjectManagementStatus = AdminSubjectManagementStatus.initial,
      this.error})
      : _subjects = subjects;

  final List<Subject>? _subjects;
  @override
  List<Subject>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AdminSubjectManagementStatus adminSubjectManagementStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'AdminSubjectManagementState(subjects: $subjects, adminSubjectManagementStatus: $adminSubjectManagementStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminSubjectManagementStateImpl &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.adminSubjectManagementStatus,
                    adminSubjectManagementStatus) ||
                other.adminSubjectManagementStatus ==
                    adminSubjectManagementStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subjects),
      adminSubjectManagementStatus,
      error);

  /// Create a copy of AdminSubjectManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminSubjectManagementStateImplCopyWith<_$AdminSubjectManagementStateImpl>
      get copyWith => __$$AdminSubjectManagementStateImplCopyWithImpl<
          _$AdminSubjectManagementStateImpl>(this, _$identity);
}

abstract class _AdminSubjectManagementState
    implements AdminSubjectManagementState {
  const factory _AdminSubjectManagementState(
      {final List<Subject>? subjects,
      final AdminSubjectManagementStatus adminSubjectManagementStatus,
      final String? error}) = _$AdminSubjectManagementStateImpl;

  @override
  List<Subject>? get subjects;
  @override
  AdminSubjectManagementStatus get adminSubjectManagementStatus;
  @override
  String? get error;

  /// Create a copy of AdminSubjectManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminSubjectManagementStateImplCopyWith<_$AdminSubjectManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
