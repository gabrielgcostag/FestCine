
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class ExhibitionRoom extends StatefulWidget {
  const ExhibitionRoom({super.key});

  @override
  State<ExhibitionRoom> createState() => _ExhibitionRoomState();
}

class _ExhibitionRoomState extends State<ExhibitionRoom> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    const double standardHeight = 300;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Card.outlined(
                color: primaryColor,
                child: SizedBox(
                  height: 330,
                  width: 350,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: AssetImage('assets/images/cinema.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SALA STÊNIO GARCIA',
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: "Montserrat",
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        onPressed: () async {},
                        child: const Text(
                          "Programação",
                          style: TextStyle(color: tertiaryColor),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card.outlined(
                color: primaryColor,
                child: SizedBox(
                  height: 330,
                  width: 350,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: AssetImage('assets/images/cinema.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SALA TUNA DWEK',
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: "Montserrat",
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        onPressed: () async {},
                        child: const Text(
                          "Programação",
                          style: TextStyle(color: tertiaryColor),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card.outlined(
                color: primaryColor,
                child: SizedBox(
                  height: 330,
                  width: 350,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: AssetImage('assets/images/cinema.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SALA PAULO BETTI',
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: "Montserrat",
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        onPressed: () async {},
                        child: const Text(
                          "Programação",
                          style: TextStyle(color: tertiaryColor),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card.outlined(
                color: primaryColor,
                child: SizedBox(
                  height: 330,
                  width: 350,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: AssetImage('assets/images/cinema.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SALA MARCOS CARUSO',
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: "Montserrat",
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        onPressed: () async {},
                        child: const Text(
                          "Programação",
                          style: TextStyle(color: tertiaryColor),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card.outlined(
                color: primaryColor,
                child: SizedBox(
                  height: 330,
                  width: 350,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: AssetImage('assets/images/cinema.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SALA MALU MADER',
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: "Montserrat",
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        onPressed: () async {},
                        child: const Text(
                          "Programação",
                          style: TextStyle(color: tertiaryColor),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card.outlined(
                color: primaryColor,
                child: SizedBox(
                  height: 330,
                  width: 350,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const Image(
                        image: AssetImage('assets/images/cinema.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SALA DANIEL DANTAS',
                      style: TextStyle(
                          color: tertiaryColor,
                          fontFamily: "Montserrat",
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        onPressed: () async {},
                        child: const Text(
                          "Programação",
                          style: TextStyle(color: tertiaryColor),
                        )),
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
