import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jornadagetx_storage/pages/home/page2.dart';

Future<void> main() async {
  await GetStorage.init();
  await GetStorage.init('box2');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      home: const Page2(),
    );
  }
}
