import 'package:flutter/material.dart';
import 'game.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/pao': (context) => ImagePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Fim do jogo'),
          onPressed: () {
            Navigator.pushNamed(context, '/pao');
          },
        ),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Imagem'),
        ),
        body: Center(
          child: Image.asset(
            './assets/panda.jpg',
            width: 600.0,
            height: 600.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Text("Próxima Fase"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GameMenuScreen(),
                ),
              );
            }));
  }
}
