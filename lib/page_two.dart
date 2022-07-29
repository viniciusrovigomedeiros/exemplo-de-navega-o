import 'package:flutter/material.dart';
import 'package:flutter_application_1/page-three.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  static const route = '/page-two';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              PageThree.route,
            );
          },
          child: const Text('Ir para a página 3'),
        ),
      ),
    );
  }
}
