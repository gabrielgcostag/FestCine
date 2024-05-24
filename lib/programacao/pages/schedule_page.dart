import 'package:festcine_pedraazul/core/helpers/colors.dart';
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
                height: 24,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image(
                      image: AssetImage(
                          'assets/images/programacao2024-breve1.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
