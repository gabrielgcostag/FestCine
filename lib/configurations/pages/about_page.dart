import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Sobre",
          style: TextStyle(color: tertiaryColor),
        ),
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(30)),
              SizedBox(height: 30),
              Text(
                "Sobre o app",
                style: TextStyle(fontSize: 30, color: tertiaryColor),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "    O app do Fest Cine Pedra Azul oferece informações práticas sobre a programação, inscrições, homenageados, prêmios, curadores, entre outros.  \n    Com uma interface simples e acessível, ele facilita o acompanhamento das principais novidades do festival.  \n    É ideal para quem deseja acompanhar tudo de maneira organizada e eficiente.",
                  style: TextStyle(fontSize: 25, color: tertiaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
