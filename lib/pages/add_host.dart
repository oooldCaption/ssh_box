import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssh_box/model/cal_model.dart';

class ServerList extends StateNotifier<List<ServerModel>>{
  ServerList(super.state);

  void add(int port){
    state = [
      ...state,
      state.first.copyWith(
        port: port
      ),
    ];
  }


}