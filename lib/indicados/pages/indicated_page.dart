import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/navigation/pages/navigation_page.dart';
import 'package:flutter/material.dart';

class IndicatedPage extends StatefulWidget {
  const IndicatedPage({super.key});

  @override
  State<IndicatedPage> createState() => _IndicatedPageState();
}

class _IndicatedPageState extends State<IndicatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text(
          'INDICADOS',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 18),
        ),
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => NavigationPage(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Center(
                child: Text(
                  'Indicados à premiação',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: tertiaryColor,
                      fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Card(
                color: secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: primaryColor,
                        child: const Column(
                          children: [
                            SizedBox(height: 28),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Curtas Nacionais",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: secondaryColor,
                                      fontFamily: 'Montserrat-Light.ttf'),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Professional Experience",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Marco Felipe Rossi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Mais Um Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Lufe Bertoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primeiro Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Liziane Bortolattoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primos",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Daniel Pustowkai",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Sangues",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Rose Paneti",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Diversos de mim mesmo",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Coi Belluzo e Joaquim Haickel",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Card(
                color: secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: primaryColor,
                        child: const Column(
                          children: [
                            SizedBox(height: 28),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Curtas Nacionais",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: secondaryColor,
                                      fontFamily: 'Montserrat-Light.ttf'),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Professional Experience",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Marco Felipe Rossi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Mais Um Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Lufe Bertoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primeiro Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Liziane Bortolattoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primos",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Daniel Pustowkai",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Sangues",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Rose Paneti",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Diversos de mim mesmo",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Coi Belluzo e Joaquim Haickel",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Card(
                color: secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: primaryColor,
                        child: const Column(
                          children: [
                            SizedBox(height: 28),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Curtas Nacionais",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: secondaryColor,
                                      fontFamily: 'Montserrat-Light.ttf'),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Professional Experience",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Marco Felipe Rossi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Mais Um Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Lufe Bertoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primeiro Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Liziane Bortolattoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primos",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Daniel Pustowkai",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Sangues",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Rose Paneti",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Diversos de mim mesmo",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Coi Belluzo e Joaquim Haickel",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Card(
                color: secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: primaryColor,
                        child: const Column(
                          children: [
                            SizedBox(height: 28),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Curtas Nacionais",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: secondaryColor,
                                      fontFamily: 'Montserrat-Light.ttf'),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Professional Experience",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Marco Felipe Rossi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Mais Um Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Lufe Bertoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primeiro Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Liziane Bortolattoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primos",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Daniel Pustowkai",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Sangues",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Rose Paneti",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Diversos de mim mesmo",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Coi Belluzo e Joaquim Haickel",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Card(
                color: secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: primaryColor,
                        child: const Column(
                          children: [
                            SizedBox(height: 28),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Curtas Nacionais",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: secondaryColor,
                                      fontFamily: 'Montserrat-Light.ttf'),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Professional Experience",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Marco Felipe Rossi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Mais Um Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Lufe Bertoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primeiro Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Liziane Bortolattoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primos",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Daniel Pustowkai",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Sangues",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Rose Paneti",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Diversos de mim mesmo",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Coi Belluzo e Joaquim Haickel",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Card(
                color: secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: primaryColor,
                        child: const Column(
                          children: [
                            SizedBox(height: 28),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Curtas Nacionais",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: secondaryColor,
                                      fontFamily: 'Montserrat-Light.ttf'),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Professional Experience",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Marco Felipe Rossi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Mais Um Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Lufe Bertoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primeiro Dia",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Liziane Bortolattoi",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Primos",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Daniel Pustowkai",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Sangues",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Rose Paneti",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Diversos de mim mesmo",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Direção: Coi Belluzo e Joaquim Haickel",
                                  style: TextStyle(
                                      color: tertiaryColor, fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
