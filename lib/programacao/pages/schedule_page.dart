import 'package:festcine_pedraazul/auth/pages/welcome_page.dart';
import 'package:festcine_pedraazul/auth/services/auth_service.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text(
          'PROGRAMAÇÃO',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 18),
        ),
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: OutlinedButton(
                onPressed: () {
                  context.read<AuthService>().logout();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Sair do App',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Center(
              child: Text(
                'Confira a programação',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: tertiaryColor,
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao1.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao2.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao3.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao4.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao5.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao6.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao7.webp')),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/programacao8.webp'))
          ],
        ),
      ),
    );
  }
}
