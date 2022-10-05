import 'package:flutter/material.dart';
import 'package:jornadagetx_storage/core/storage/storage.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final storage = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(storage.name.val),
            ElevatedButton(
              onPressed: () {
                storage.name.val = 'Jesus é bom';
                setState(() {});
              },
              child: const Text('Gravar msg'),
            ),
            ElevatedButton(
              onPressed: () {
                storage.name.val = '...';
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
