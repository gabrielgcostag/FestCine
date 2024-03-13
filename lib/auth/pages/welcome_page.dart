import 'package:festcine_pedraazul/auth/pages/login_page.dart';
import 'package:flutter/material.dart';
import '../../core/helpers/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pedraazul1.JPG'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            top: 60,
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image(
                image: AssetImage('assets/images/LogoFCPA.png'),
              ),
            ),
          ),
          const Positioned(
            bottom: 150,
            child: Text(
              'SEJA BEM-VINDO',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                color: tertiaryColor,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: tertiaryColor),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              startsAtLogin: true,
                            )),
                  );
                },
                child: SizedBox(
                  width: size.width - 64,
                  child: const Center(
                    child: Text(
                      'INICIAR SESSÃO',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 2, color: tertiaryColor),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              startsAtLogin: false,
                            )),
                  );
                },
                child: SizedBox(
                  width: size.width - 64,
                  child: const Center(
                    child: Text(
                      'REGISTRAR-SE',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: tertiaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
