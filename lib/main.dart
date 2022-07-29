import 'package:flutter/material.dart';
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
      onUnknownRoute: (context) {
        return MaterialPageRoute(
          builder: (context) {
            return const Text('Página não encontrada');
          },
        );
      },
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
              '/page-two',
              arguments: 'Estou vindo da pagina inicial',
            );
          },
          child: const Text('Ir para a página 2'),
        ),
      ),
    );
  }
}
