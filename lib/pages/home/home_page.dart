import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final storage = GetStorage();
  final storage2 = GetStorage('box2');
  late final VoidCallback listen;
  @override
  void initState() {
    listen = storage.listen(() {
      print('Storage foi alterado');
    });
    storage.listenKey('msg', (value) {
      print('Valor alterado: $value');
    });
    super.initState();
  }

  @override
  void dispose() {
    listen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var msg = storage.read('msg') ?? '...';
    var msg2 = storage2.read('msg') ?? '...';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg),
            ElevatedButton(
              onPressed: () {
                storage.write('msg', 'Jesus é bom');
                setState(() {});
              },
              child: const Text('Gravar msg'),
            ),
            ElevatedButton(
              onPressed: () {
                storage.remove('msg');
                setState(() {});
              },
              child: const Text('Remover msg'),
            ),
            Text(msg2),
            ElevatedButton(
              onPressed: () {
                storage2.write('msg', 'Jesus é maravilhoso');
                setState(() {});
              },
              child: const Text('Gravar msg'),
            ),
            ElevatedButton(
              onPressed: () {
                storage2.remove('msg');
                setState(() {});
              },
              child: const Text('Remover msg'),
            ),
          ],
        ),
      ),
    );
  }
}
