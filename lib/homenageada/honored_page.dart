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
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0), // Define o raio dos cantos
                                        ),
                                      ),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
