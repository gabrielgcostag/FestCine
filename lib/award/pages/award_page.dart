import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AwardPage extends StatefulWidget {
  const AwardPage({super.key});

  @override
  State<AwardPage> createState() => _AwardPageState();
}

class _AwardPageState extends State<AwardPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    const double standardHeight = 300;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text(
          "Premiações",
          style: TextStyle(color: tertiaryColor),
        ),
        forceMaterialTransparency: true,
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 140,
              ),
              Card.outlined(
                color: Colors.transparent,
                child: SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "A premiação consiste nas seguintes categorias",
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: 'Montserrat',
                          fontSize: 0.035 * currentWidth),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Brasileiro Longa-metragem",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Brasileiro Curta-metragem",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Brasileiro Documentário",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Brasileiro de Animação",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Webserie Brasileira",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.videocam,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Diretor Longa-metragem Brasileiro",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat',
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.videocam,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Diretor Curta-metragem Brasileiro",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat',
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.feed,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Roteiro Longa-metragem Brasileiro",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat',
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.feed,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Roteiro Curta-metragem Brasileiro",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontFamily: 'Montserrat',
                                  fontSize: 13),
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Ator Longa-metragem Brasileiro",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Ator Curta-metragem Brasileiro",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Atriz Longa-metragem Brasileiro",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Ator Curta-metragem Brasileiro",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.videocam,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Direção de Fotografia \nLonga-metragem Brasileiro",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.videocam,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Direção de Fotografia \nCurta-metragem Brasileiro",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Estrangeiro \nLonga-metragem",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Estrangeiro \nCurta-metragem",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Estrangeiro Documentário",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.movie,
                          color: secondaryColor,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.03 * currentWidth),
                          child: SizedBox(
                            width: 0.68 * currentWidth,
                            child: const Text(
                              "Melhor Filme Estrangeiro de Animação",
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
