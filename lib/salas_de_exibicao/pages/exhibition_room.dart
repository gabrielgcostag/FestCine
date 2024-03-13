import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExhibitionRoom extends StatefulWidget {
  const ExhibitionRoom({super.key});

  @override
  State<ExhibitionRoom> createState() => _ExhibitionRoomState();
}

class _ExhibitionRoomState extends State<ExhibitionRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Bem-vindo, Marcoz',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    color: tertiaryColor),
              ),
              const SizedBox(
                height: 40,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: const Duration(seconds: 8),
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8),
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange),
                    width: 400,
                  )
                ],
              ),
              //GridView(gridDelegate: ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              tabBackgroundColor: Colors.grey.shade800,
              activeColor: Colors.white,
              color: Colors.white,
              gap: 8,
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.movie,
                  text: 'Salas',
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.photo_library,
                  text: 'Galeria',
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Configurações',
                  onPressed: () {},
                )
              ]),
        ),
      ),
    );
  }
}
