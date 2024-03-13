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
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor, width: 5),
                borderRadius: BorderRadius.circular(14),
                color: tertiaryColor,
              ),
              height: 550,
              child: const Image(
                  image: AssetImage('assets/images/curtasnacionais1.png')),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor, width: 5),
                borderRadius: BorderRadius.circular(14),
                color: tertiaryColor,
              ),
              height: 550,
              child: const Image(
                  image: AssetImage('assets/images/curtasnacionais1.png')),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor, width: 5),
                borderRadius: BorderRadius.circular(14),
                color: tertiaryColor,
              ),
              height: 550,
              child: const Image(
                  image: AssetImage('assets/images/curtasnacionais1.png')),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor, width: 5),
                borderRadius: BorderRadius.circular(14),
                color: tertiaryColor,
              ),
              height: 550,
              child: const Image(
                  image: AssetImage('assets/images/curtasnacionais1.png')),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor, width: 5),
                borderRadius: BorderRadius.circular(14),
                color: tertiaryColor,
              ),
              height: 550,
              child: const Image(
                  image: AssetImage('assets/images/curtasnacionais1.png')),
            )
          ],
        ),
      ),
    );
  }
}
