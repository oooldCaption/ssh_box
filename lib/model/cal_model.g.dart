// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerName _$$_ServerNameFromJson(Map<String, dynamic> json) =>
    _$_ServerName(
      serverName: json['serverName'] as String,
      host: json['host'] as String,
      port: json['port'] as int,
      loginName: json['loginName'] as String,
      userPSW: json['userPSW'] as String,
    );

Map<String, dynamic> _$$_ServerNameToJson(_$_ServerName instance) =>
    <String, dynamic>{
      'serverName': instance.serverName,
      'host': instance.host,
      'port': instance.port,
      'loginName': instance.loginName,
      'userPSW': instance.userPSW,
    };
