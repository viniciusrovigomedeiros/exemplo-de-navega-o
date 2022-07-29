import 'package:flutter/material.dart';
import 'package:flutter_application_1/page-three.dart';
import 'core/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(), // <- se for trabalhar com rotas nomeadas se uma o initialRoute no lugar do home:
      initialRoute: MyHomePage.route,
      routes: appRoutes,
      onUnknownRoute: onUnKnowRoute,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              //PageThree.route,
              'nsadfnfasdnfsd', //para simular uma pagina nao encontrada descomentar essa linha e comentar a de cima
              arguments: 'Estou vindo da pagina inicial',
            );
          },
          child: const Text('Ir para a página 2'),
        ),
      ),
    );
  }
}
