// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerModel _$ServerModelFromJson(Map<String, dynamic> json) {
  return _ServerName.fromJson(json);
}

/// @nodoc
mixin _$ServerModel {
  String get serverName => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get loginName => throw _privateConstructorUsedError;
  String get userPSW => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerModelCopyWith<ServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerModelCopyWith<$Res> {
  factory $ServerModelCopyWith(
          ServerModel value, $Res Function(ServerModel) then) =
      _$ServerModelCopyWithImpl<$Res, ServerModel>;
  @useResult
  $Res call(
      {String serverName,
      String host,
      int port,
      String loginName,
      String userPSW});
}

/// @nodoc
class _$ServerModelCopyWithImpl<$Res, $Val extends ServerModel>
    implements $ServerModelCopyWith<$Res> {
  _$ServerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverName = null,
    Object? host = null,
    Object? port = null,
    Object? loginName = null,
    Object? userPSW = null,
  }) {
    return _then(_value.copyWith(
      serverName: null == serverName
          ? _value.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      loginName: null == loginName
          ? _value.loginName
          : loginName // ignore: cast_nullable_to_non_nullable
              as String,
      userPSW: null == userPSW
          ? _value.userPSW
          : userPSW // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerNameCopyWith<$Res>
    implements $ServerModelCopyWith<$Res> {
  factory _$$_ServerNameCopyWith(
          _$_ServerName value, $Res Function(_$_ServerName) then) =
      __$$_ServerNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serverName,
      String host,
      int port,
      String loginName,
      String userPSW});
}

/// @nodoc
class __$$_ServerNameCopyWithImpl<$Res>
    extends _$ServerModelCopyWithImpl<$Res, _$_ServerName>
    implements _$$_ServerNameCopyWith<$Res> {
  __$$_ServerNameCopyWithImpl(
      _$_ServerName _value, $Res Function(_$_ServerName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverName = null,
    Object? host = null,
    Object? port = null,
    Object? loginName = null,
    Object? userPSW = null,
  }) {
    return _then(_$_ServerName(
      serverName: null == serverName
          ? _value.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      loginName: null == loginName
          ? _value.loginName
          : loginName // ignore: cast_nullable_to_non_nullable
              as String,
      userPSW: null == userPSW
          ? _value.userPSW
          : userPSW // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerName with DiagnosticableTreeMixin implements _ServerName {
  const _$_ServerName(
      {required this.serverName,
      required this.host,
      required this.port,
      required this.loginName,
      required this.userPSW});

  factory _$_ServerName.fromJson(Map<String, dynamic> json) =>
      _$$_ServerNameFromJson(json);

  @override
  final String serverName;
  @override
  final String host;
  @override
  final int port;
  @override
  final String loginName;
  @override
  final String userPSW;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerModel(serverName: $serverName, host: $host, port: $port, loginName: $loginName, userPSW: $userPSW)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerModel'))
      ..add(DiagnosticsProperty('serverName', serverName))
      ..add(DiagnosticsProperty('host', host))
      ..add(DiagnosticsProperty('port', port))
      ..add(DiagnosticsProperty('loginName', loginName))
      ..add(DiagnosticsProperty('userPSW', userPSW));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerName &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.loginName, loginName) ||
                other.loginName == loginName) &&
            (identical(other.userPSW, userPSW) || other.userPSW == userPSW));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, serverName, host, port, loginName, userPSW);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerNameCopyWith<_$_ServerName> get copyWith =>
      __$$_ServerNameCopyWithImpl<_$_ServerName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerNameToJson(
      this,
    );
  }
}

abstract class _ServerName implements ServerModel {
  const factory _ServerName(
      {required final String serverName,
      required final String host,
      required final int port,
      required final String loginName,
      required final String userPSW}) = _$_ServerName;

  factory _ServerName.fromJson(Map<String, dynamic> json) =
      _$_ServerName.fromJson;

  @override
  String get serverName;
  @override
  String get host;
  @override
  int get port;
  @override
  String get loginName;
  @override
  String get userPSW;
  @override
  @JsonKey(ignore: true)
  _$$_ServerNameCopyWith<_$_ServerName> get copyWith =>
      throw _privateConstructorUsedError;
}
