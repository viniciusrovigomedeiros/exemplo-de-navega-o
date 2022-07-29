import 'package:flutter/material.dart';

import 'main.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);
  static const route = '/page-three';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 3'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              MyHomePage.route,
              arguments: 'Estou vindo da pagina inicial',
            );
          },
          child: const Text('ir para a página inicial'),
        ),
      ),
    );
  }
}
