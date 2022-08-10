// ignore_for_file: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart' show DevicePreview;
import 'package:facebook_ui/app/facebook_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {

  if(!kReleaseMode){

    runApp( DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),),
    );}
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FacebookiU(),
    );
  }
}
