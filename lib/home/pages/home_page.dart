import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
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

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
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
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('Todas'),
                      onTap: () {},
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
        onPageChanged: setPaginaAtual,
        children: const [
          SchedulePage(),
          IndicatedPage(),
          GalleryPage(),
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
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Favoritas'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuração',
          ),
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
