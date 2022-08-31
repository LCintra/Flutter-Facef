import 'package:flutter/material.dart';

class ListaEquipes extends StatelessWidget {
  ListaEquipes({Key? key}) : super(key: key);

  final equipes = [
    {
      "nome": "Catar",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.png",
    },
    {
      "nome": "Equador",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/7/74/FEFecu.png",
    },
    {
      "nome": "Paises Baixos",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/f/fe/Royal_Netherlands_Football_Association_Logo.svg.png",
    },
    {
      "nome": "Senegal",
      "grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: equipes.length,
        itemBuilder: (context, i) {
          var equipe = equipes[i];
          var simbolo = Image.network(equipe["url_simbolo"]!);
          return ListTile(
            leading: simbolo,
            title: Text(equipe["nome"]!),
            subtitle: Text("Grupo " + equipe["grupo"]!),
          );
        });
  }
}
