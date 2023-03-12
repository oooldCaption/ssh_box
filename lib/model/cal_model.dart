import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'cal_model.freezed.dart';
part 'cal_model.g.dart';

@freezed
class ServerModel with _$ServerModel{
  const factory ServerModel({
    required String serverName,
    required String host,
    required int port,
    required String loginName,
    required String userPSW,
  }) = _ServerName;

  factory ServerModel.fromJson(Map<String, dynamic?> json)=> _$ServerModelFromJson(json);
}