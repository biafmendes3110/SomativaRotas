import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ); //MaterialApp
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela() {
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados ";
    });
  }

  void _Cadastrar() {
    String usuario = usuarioController.text;
    String senha = senhaController.text;
    setState(() {
      _textoInfo = "Cadastrado com sucesso!";

      if (usuario.isEmpty || senha.isEmpty) {
        _textoInfo = "As informações estão incompletas";
      } else {
        _textoInfo = "Cadastrado com sucesso!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuário"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(Icons.person_outline,
                size: 120.0, color: Colors.teal), //Icon

            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Usuário",
                labelStyle: TextStyle(color: Colors.grey),
              ),
              //InputDecoration
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ), //TextField Usuario

            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.grey),
              ),
              //InputDecoration
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ), //TextField senha

            //Botão para executar o cadastramento]
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: _Cadastrar,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.teal),
                      ),
                      child: const Text("Cadastrar"))
                  //ElevatedButton
                  ), //SizedBox
            ), //Padding

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}
