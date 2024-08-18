import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CuradoriaPage extends StatefulWidget {
  const CuradoriaPage({super.key});

  @override
  State<CuradoriaPage> createState() => _CuradoriaPageState();
}

class _CuradoriaPageState extends State<CuradoriaPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    const double standardHeight = 300;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Curadores",
          style: TextStyle(color: tertiaryColor),
        ),
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 160),
            Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    SizedBox(
                        width: currentWidth * 0.4,
                        height: standardHeight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/CalGomes.jpg"),
                          ),
                        )),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: standardHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Cal Gomes",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      style: TextStyle(fontSize: 16),
                                      'Jornalista e Publicitário, coordenou o Cine Clube Z, na faculdade de Comunicação FACHA, Rio de Janeiro. Dirigiu a agência de publicidade Eternity e o jornal Página Dois.Foi editor-chefe da revista Prisma e...'),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side: WidgetStateProperty.all<BorderSide>(
                                        const BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(255, 207, 144,
                                                183)), // Define a cor da borda
                                      ),
                                    ),
                                    onPressed: () async {
                                      var url = Uri.https(
                                          'festcinepedraazul.com.br',
                                          '/curadoria');
                                      await launchUrl(url);
                                    },
                                    child: const Text(
                                      "Saber Mais",
                                      style: TextStyle(color: primaryColor),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 64),
            Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    SizedBox(
                        width: currentWidth * 0.4,
                        height: standardHeight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/AndreMorais.png"),
                          ),
                        )),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: standardHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "André Morais",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      style: TextStyle(fontSize: 16),
                                      'André Morais é ator, cineasta, roteirista e músico paraibano. Seu primeiro filme como realizador, o curta-metragem ALMA, participou de mais de 20 festivais no Brasil e no exterior. O filme...'),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side: WidgetStateProperty.all<BorderSide>(
                                        const BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(255, 207, 144,
                                                183)), // Define a cor da borda
                                      ),
                                    ),
                                    onPressed: () async {
                                      var url = Uri.https(
                                          'festcinepedraazul.com.br',
                                          '/curadoria');
                                      await launchUrl(url);
                                    },
                                    child: const Text(
                                      "Saber Mais",
                                      style: TextStyle(color: primaryColor),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 64),
            Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    SizedBox(
                        width: currentWidth * 0.4,
                        height: standardHeight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/saraEngelhardt.jpeg"),
                          ),
                        )),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: standardHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Sara Engelhardt",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      style: TextStyle(fontSize: 16),
                                      'Sara Engelhardt é Filmmaker, diretora de cena e animação, roteirista, produtora de áudio e vídeo há mais de 19 anos. Estudou Marketing na Faculdade Estácio de Sá, Vitória ES. Dentre...'),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side: WidgetStateProperty.all<BorderSide>(
                                        const BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(255, 207, 144,
                                                183)), // Define a cor da borda
                                      ),
                                    ),
                                    onPressed: () async {
                                      var url = Uri.https(
                                          'festcinepedraazul.com.br',
                                          '/curadoria');
                                      await launchUrl(url);
                                    },
                                    child: const Text(
                                      "Saber Mais",
                                      style: TextStyle(color: primaryColor),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 64),
            Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    SizedBox(
                        width: currentWidth * 0.4,
                        height: standardHeight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/pedroKalli.jpg"),
                          ),
                        )),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: standardHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Pedro Kalli",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      style: TextStyle(fontSize: 16),
                                      'Filmmaker e criador de conteúdo. Graduado pela FAPCOM - Faculdade Paulus de Comunicação e Produção Audiovisual. Atuou como editor de vídeos na equipe de Branded Content da VIX Mídia...'),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side: WidgetStateProperty.all<BorderSide>(
                                        const BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(255, 207, 144,
                                                183)), // Define a cor da borda
                                      ),
                                    ),
                                    onPressed: () async {
                                      var url = Uri.https(
                                          'festcinepedraazul.com.br',
                                          '/curadoria');
                                      await launchUrl(url);
                                    },
                                    child: const Text(
                                      "Saber Mais",
                                      style: TextStyle(color: primaryColor),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
