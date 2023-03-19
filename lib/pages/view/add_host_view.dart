import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ssh_box/config/check_params.dart';
import 'package:ssh_box/config/size_adpat.dart';
import 'package:ssh_box/model/cal_model.dart';
import 'package:ssh_box/pages/add_host.dart';
import 'package:xterm/core.dart';
import 'package:xterm/xterm.dart';

final server = Provider((ref) => ServerModel(
    serverName: 'serverName',
    host: "192.168.50.222",
    port: 22,
    loginName: "root",
    userPSW: "Suqiankun9"));
// final changeServer = ChangeNotifierProvider((ref) => ser)

final serverList = StateNotifierProvider<ServerList, List<ServerModel>>((ref) {
  return ServerList(List.generate(
      10,
      (index) => ServerModel(
          serverName: 'serverName',
          host: "192.168.50.222",
          port: index,
          loginName: "root",
          userPSW: "Suqiankun9")));
});

final serverCondition = Provider<List<ServerModel>>((ref) {
  final ss = ref.watch(serverList);
  return ss;
});
final hellowrld = StateProvider((ref) => "hello world");
_testConsumer() {
  return Consumer(builder: (ctx, ref, _) {
    return Text(ref.watch(hellowrld));
  });
}

Terminal tm = Terminal();

class AddHostView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
// TODO: implement build
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          getNetList();
        },
        child: Text(
          "click",
        ),
      ),
      body: _layoutView(),
    );
  }

  _layoutView() {
    return Column(
      children: [
        statusCell(),
        Expanded(
          child: _serverInfo(),
          flex: 2,
        ),
        cellHeight(10),
        Expanded(
          child: _authView(),
          flex: 1,
        ),
        cellHeight(30),
      ],
    );
  }

  /// 服务器信息 view
  _serverInfo() {
    return Neumorphic(
      style: const NeumorphicStyle(
          depth: 20,
          shape: NeumorphicShape.concave,
          color: Colors.grey,
          lightSource: LightSource.topRight),
      margin: EdgeInsets.symmetric(vertical: pxW(10), horizontal: pxH(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          _returnCell('名称: '),
          cellHeight(20),
          lineView(color: Colors.red),
          cellHeight(10),
          _returnCell('主机: '),
          cellHeight(20),
          lineView(color: Colors.red),
          cellHeight(10),
          _returnCell('端口: '),
          Spacer(),
        ],
      ),
    );
  }

  /// 认证信息 view
  _authView() {
    return Neumorphic(
      style: const NeumorphicStyle(
          depth: 20,
          shape: NeumorphicShape.concave,
          color: Colors.grey,
          lightSource: LightSource.topRight),
      margin: EdgeInsets.symmetric(vertical: pxW(10), horizontal: pxH(15)),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                _returnText("用户"),
                Spacer(),
// TextField()
              ],
            ),
            Row(
              children: <Widget>[
                _returnText("密码"),
                Spacer(),
// TextField()
              ],
            )
          ],
        ),
      ),
    );
  }

  _returnCell(String tip) {
    return Row(
      children: <Widget>[
        const Spacer(flex: 1),
        _returnText(tip),
        const Spacer(flex: 1),
        Expanded(flex: 7, child: _returnInput()),
        const Spacer(flex: 1)
// TextField()
      ],
    );
  }

  _returnText(String tip) {
    return NeumorphicText(
      tip,
      textAlign: TextAlign.start,
      textStyle: NeumorphicTextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
      style: const NeumorphicStyle(
        color: Colors.white,
        depth: 20,
        surfaceIntensity: 0.3,
        intensity: 0.5,
        shape: NeumorphicShape.convex,
      ),
    );
  }

  _returnInput() {
    return Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          depth: -10,
          intensity: 0.9,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "test",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ));
  }
}
