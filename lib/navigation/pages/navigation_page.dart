import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
import 'package:festcine_pedraazul/indicados/pages/indicated_page.dart';
import 'package:festcine_pedraazul/programacao/pages/schedule_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      extendBodyBehindAppBar: true,
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
                      leading: const Icon(Icons.list),
                      title: const Text('Todas'),
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
                      leading: const Icon(Icons.person),
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
          Scaffold(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todas'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Galeria'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Indicados'),
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
