import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre o app"),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(30)),
              Text(
                "Sobre",
                style: TextStyle(fontSize: 30),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "    O FestCine Pedra Azul App é o seu companheiro indispensável para desfrutar ao máximo do festival de cinema mais esperado do ano.  \n    Desenvolvido com tecnologia de ponta em Dart usando Flutter, nosso aplicativo oferece uma experiência fluida e intuitiva tanto para usuários de Android quanto iOS. Esteja você interessado em explorar a programação completa do festival, reservar ingressos, ou interagir com outros cinéfilos, o FestCine Pedra Azul App tem tudo o que você precisa, garantindo que você não perca nenhum momento emocionante do evento.",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
