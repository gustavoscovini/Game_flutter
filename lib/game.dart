import 'package:boatematica/game_adicao.dart';
import 'package:boatematica/game_divisao.dart';
import 'package:boatematica/game_multiplicacao.dart';
import 'package:boatematica/game_subtracao.dart';
import 'package:flutter/material.dart';
import 'Loading.dart';
import 'globals.dart' as global;

void main() => runApp(GameMenuScreen());

class GameMenuScreen extends StatefulWidget {
  @override
  _GameMenuScreenState createState() => _GameMenuScreenState();
}

class _GameMenuScreenState extends State<GameMenuScreen> {
  bool adicaoCompleted = false;
  bool subtracaoCompleted = false;
  bool multiplicacaoCompleted = false;
  bool divisaoCompleted = false;

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar( backgroundColor: Colors.blue, title: Text('Boatematica'),),
      body: Stack(
        //Esse Stack() é onde estamos colocando o .gif de fundo
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset(
              'assets/background.gif',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            //Esse Center() é onde estamos colocando os botões de play e créditos
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameAdicao()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/soma.png',
                      width: 250,
                      height: 150,
                    ),
                  ),
                ),
                InkWell(
                  child: Image(
                    width: 250,
                    height: 150,
                    image: AssetImage(global.adicaoCompleted
                        ? "assets/subtracao.png"
                        : "assets/subtracao_b.png"),
                  ),
                  onTap: () {
                    if (global.adicaoCompleted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GameSubtracao()),
                      );
                    }
                  },
                ),
                InkWell(
                  child: Image(
                    width: 250,
                    height: 150,
                    image: AssetImage(global.subtracaoCompleted
                        ? "assets/multiplicacao.png"
                        : "assets/multiplicacao_b.png"),
                  ),
                  onTap: () {
                    if (global.subtracaoCompleted) {
                      print(global.subtracaoCompleted);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GameMultiplicacao()),
                      );
                    }
                  },
                ),
                InkWell(
                  child: Image(
                    width: 250,
                    height: 150,
                    image: AssetImage(global.multiplicacaoCompleted
                        ? "assets/divisao.png"
                        : "assets/divisao_b.png"),
                  ),
                  onTap: () {
                    if (global.multiplicacaoCompleted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameDivisao()),
                      );
                    }
                  },
                ),
                // InkWell(onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Loading()),
                //   );
                // })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
