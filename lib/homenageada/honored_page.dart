import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HonoredPage extends StatefulWidget {
  const HonoredPage({super.key});

  @override
  State<HonoredPage> createState() => _HonoredPageState();
}

class _HonoredPageState extends State<HonoredPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    const double standardHeight = 300;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text(
          "Homenageados",
          style: TextStyle(color: tertiaryColor),
        ),
        forceMaterialTransparency: true,
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
                            image:
                                AssetImage("assets/images/danieldantas.jpeg"),
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
                              "Daniel Dantas",
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
                                      'Iniciou sua carreira no teatro, em 1975, como integrante do grupo Asdrúbal Trouxe o Trombone, na peça "O Inspetor Geral", de Nicolai Gogol. Nos anos 1980, integrou o grupo teatral...'),
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
                                      var url = Uri.https('pt.wikipedia.org',
                                          '/wiki/Daniel_Dantas');
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
                            image: AssetImage("assets/images/malu_mader.webp"),
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
                              "Malu Mader",
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
                                      'Maria de Lourdes da Silveira Mäder (Rio de Janeiro, 12 de setembro de 1966), mais conhecida como Malu Mader, é uma atriz brasileira. Tendo protagonizado diversas telenovelas, tornou-se uma das...'),
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
                                      var url = Uri.https('pt.wikipedia.org',
                                          '/wiki/Malu_Mader');
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
                            image: AssetImage("assets/images/paulo-betti.webp"),
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
                              "Paulo Betti",
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
                                      'Interpretou um de seus personagens mais marcantes do cinema, em Lamarca. Também interpretou outro personagem histórico, o Visconde de Mauá, Irineu Evangelista de...'),
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
                                      var url = Uri.https('pt.wikipedia.org',
                                          '/wiki/Paulo_Betti');
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
                                AssetImage("assets/images/marcos-caruso.png"),
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
                              "Marcos Caruso",
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
                                      'Marcos Vianna Caruso (São Paulo, 22 de fevereiro de 1952) é um ator, autor e diretor brasileiro. Autor e diretor de vários sucessos...'),
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
                                      var url = Uri.https('pt.wikipedia.org',
                                          '/wiki/Marcos_Caruso');
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
                            image: AssetImage("assets/images/tuna.jpg"),
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
                              "Tuna Dwek",
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
                                      'Filha de imigrantes sírios de origem judaica,[3] foi alfabetizada numa escola francesa e fez cursos de inglês, italiano e espanhol. Entre os anos de 1977 e 1979, morou na Europa...'),
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
                                      var url = Uri.https('pt.wikipedia.org',
                                          '/wiki/Tuna_Dwek');
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
                                AssetImage("assets/images/stenio-garcia.jpg"),
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
                              "Stênio Garcia",
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
                                      'Stênio Garcia Faro (Mimoso do Sul, 28 de abril de 1932) é um ator brasileiro. Conhecido por suas performances na tela e no palco, ele é ganhador de...'),
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
                                      var url = Uri.https('pt.wikipedia.org',
                                          '/wiki/Stênio_Garcia');
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
          ],
        ),
      ),
    );
  }
}
