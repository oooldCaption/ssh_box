import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssh_box/pages/view/add_host_view.dart';
import 'package:window_manager/window_manager.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });


  await Hive.initFlutter();


  runApp(
       ProviderScope(
        child: MyApp(),
      )
  );
}

class MyApp extends ConsumerWidget {

  final ctbPro = StateProvider((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (xtx,child){
          return NeumorphicApp(
            themeMode: ThemeMode.light,
            theme: NeumorphicThemeData(
              baseColor: Color.alphaBlend(Colors.white.withOpacity(0.3), Colors.grey),
              lightSource: LightSource.topLeft,
              depth: 10,
            ),
            darkTheme: NeumorphicThemeData(
              baseColor: Color(0xFF343540),
              lightSource: LightSource.topLeft,
              depth: 6,
            ),
            home: AddHostView(),
          );
        }
    );
  }


}

