import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget {
  const ComEstado({super.key});

  @override
  State<ComEstado> createState() => _ComEstadoState();
}

class _ComEstadoState extends State<ComEstado> {
  String nome = 'Fulano';
  int valor = 128;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('Outline Button em ação'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                icon: const Icon(Icons.person),
                label: const Text('Mostre o nome'),
                onPressed: () {
                  setState(() {
                    nome = 'Wagner';
                    valor = 255;
                  });
                },
              ),
                Text(
                  nome,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 22,
                    color: Color.fromARGB(valor, 100, 100, 100),                    
                  ),
                ),              
            ],
          ),
        ),
      ),
    );
  }
}
