import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';

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
        title: const Text(
          "Curadores",
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
                            image: AssetImage("assets/images/CalGomes.jpg"),
                          ),
                        )),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: standardHeight,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Cal Gomes",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            Spacer(),
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
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "André Morais",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            Spacer(),
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
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Sara Engelhardt",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            Spacer(),
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
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Pedro Kalli",
                              style:
                                  TextStyle(fontSize: 24, color: primaryColor),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                      "Description Description Description Description Description DescriptionDescription Description DescriptionDescription"),
                                ),
                              ],
                            ),
                            Spacer(),
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
