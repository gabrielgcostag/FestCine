import 'package:festcine_pedraazul/configurations/configuration_page.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/festival/the_festival_page.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
import 'package:festcine_pedraazul/homenageada/honored_page.dart';
import 'package:festcine_pedraazul/indicados/pages/indicated_page.dart';
import 'package:festcine_pedraazul/programacao/pages/schedule_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
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

  String nomeDaPagina() {
    if (paginaAtual == 0) {
      return "Programação";
    } else if (paginaAtual == 1) {
      return "Galeria";
    } else if (paginaAtual == 2) {
      return "Indicados";
    } else
      return "Configurações";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(color: tertiaryColor),
          title: Text(
            nomeDaPagina(),
            style: TextStyle(color: tertiaryColor),
          )),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Navegação',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
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
                      leading: const Icon(Icons.emoji_events),
                      title: const Text('Indicados'),
                      onTap: () {
                        _onDrawerItemTapped(2);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Configurações'),
                      onTap: () {
                        _onDrawerItemTapped(3);
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
                            builder: (context) => TheFestivalPage(),
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
                            builder: (context) => HonoredPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.poll),
                      title: const Text('Outra Page'),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Scaffold(
                              appBar: AppBar(),
                            ),
                          ),
                        );
                      },
                    ),
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
          IndicatedPage(),
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
              icon: Icon(Icons.calendar_month_outlined), label: 'Programação'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Galeria'),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events), label: 'Indicados'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuração',
          ),
        ],
        onTap: _onBottomNavItemTapped,
      ),
    );
  }
}
