import 'package:festcine_pedraazul/core/helpers/colors.dart';
<<<<<<< HEAD
import 'package:festcine_pedraazul/navigation/pages/navigation_page.dart';
=======
import 'package:flutter/cupertino.dart';
>>>>>>> honored_page
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao1.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao2.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao3.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao4.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao5.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao6.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao7.webp'))),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage('assets/images/programacao8.webp'))),
            ],
          ),
        ),
      ),
    );
  }
}
