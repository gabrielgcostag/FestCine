import 'package:festcine_pedraazul/award/pages/award_page.dart';
import 'package:festcine_pedraazul/configurations/configuration_page.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/curadoria/pages/curadoria_page.dart';
import 'package:festcine_pedraazul/festival/the_festival_page.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
import 'package:festcine_pedraazul/home/home_page.dart';
import 'package:festcine_pedraazul/homenageada/honored_page.dart';
import 'package:festcine_pedraazul/indicados/pages/indicated_page.dart';
import 'package:festcine_pedraazul/programacao/pages/schedule_page.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/exhibition_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int paginaAtual = 2;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  void _onBottomNavItemTapped(int index) {
    setState(() {
      paginaAtual = index;
      pc.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    });
  }

  void _onDrawerItemTapped(int index) {
    setState(() {
      paginaAtual = index;
      pc.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(32),
              ),
              const Divider(height: 0, indent: 16, endIndent: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.calendar_month_outlined),
                      title: const Text('Programação'),
                      onTap: () {
                        _onDrawerItemTapped(0);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.photo),
                      title: const Text('Galeria'),
                      onTap: () {
                        _onDrawerItemTapped(1);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('Home'),
                      onTap: () {
                        _onDrawerItemTapped(2);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.weekend),
                      title: const Text('Salas de exibição'),
                      onTap: () {
                        _onDrawerItemTapped(3);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Configurações'),
                      onTap: () {
                        _onDrawerItemTapped(4);
                        Navigator.of(context).pop();
                      },
                    ),
                    const Divider(indent: 8, endIndent: 8),
                    ListTile(
                      leading: const Icon(Icons.movie),
                      title: const Text('O Festival'),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TheFestivalPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.star),
                      title: const Text('Homenageados'),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HonoredPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.videocam),
                      title: const Text('Inscrição'),
                      onTap: () async {
                        var url = Uri.https('filmfreeway.com');
                        await launchUrl(url);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Indicados'),
                      onTap: () async {
                        var url =
                            Uri.https('festcinepedraazul.com.br', 'indicados');
                        await launchUrl(url);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.how_to_reg),
                      title: const Text('Curadoria'),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const CuradoriaPage()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.emoji_events),
                      title: const Text('Premiação'),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const AwardPage()),
                        );
                      },
                    ),
                    const Divider(indent: 8, endIndent: 8),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Descubra nossas redes",
                      style: TextStyle(
                          fontFamily: "Montserrat-bold", fontSize: 16),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            var url =
                                Uri.https('instagram.com', 'festcinepedraazul');
                            await launchUrl(url);
                          },
                          child: const Card(
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Image(
                                image:
                                    AssetImage("assets/images/insta-logo.png"),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            var url =
                                Uri.https('facebook.com', 'festcinepedraazul');
                            await launchUrl(url);
                          },
                          child: const Card(
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Image(
                                image: AssetImage(
                                    "assets/images/facebook-logo.png"),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            var url = Uri.https('x.com', 'fc_pedra_azul');
                            await launchUrl(url);
                          },
                          child: const Card(
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Image(
                                image: AssetImage("assets/images/x-logo.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: pc,
        onPageChanged: (index) => setState(() {
          paginaAtual = index;
        }),
        children: const [
          SchedulePage(),
          GalleryPage(),
          HomePage(),
          ExhibitionRoom(),
          ConfigurationPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: tertiaryColor,
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Programação'),
          BottomNavigationBarItem(
              backgroundColor: tertiaryColor,
              icon: Icon(Icons.photo),
              label: 'Galeria'),
          BottomNavigationBarItem(
              backgroundColor: tertiaryColor,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: tertiaryColor,
              icon: Icon(Icons.weekend),
              label: 'Salas'),
          BottomNavigationBarItem(
            backgroundColor: tertiaryColor,
            icon: Icon(Icons.settings),
            label: 'Configuração',
          ),
        ],
        onTap: _onBottomNavItemTapped,
      ),
    );
  }
}
