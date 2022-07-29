import 'package:flutter/material.dart';

import 'main.dart';

class PageError extends StatelessWidget {
  const PageError({Key? key}) : super(key: key);
  static const route = '/page-three';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 160,
            color: Colors.red,
          ),
          Text(
            'Página não encontrada!',
            style: TextStyle(color: Colors.red, fontSize: 35),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  MyHomePage.route,
                  arguments: 'Estou vindo da pagina inicial',
                );
              },
              child: const Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
}
