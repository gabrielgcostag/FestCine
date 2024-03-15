import 'package:festcine_pedraazul/core/helpers/colors.dart';
<<<<<<< HEAD
import 'package:flutter/cupertino.dart';

=======
>>>>>>> honored_page
import 'package:flutter/material.dart';

class TheFestivalPage extends StatefulWidget {
  const TheFestivalPage({super.key});

  @override
  State<TheFestivalPage> createState() => _TheFestivalPageState();
}

class _TheFestivalPageState extends State<TheFestivalPage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: SizedBox(
          child: Stack(children: <Widget>[
        Container(
          width: currentWidth,
          height: currentHeight,
          color: primaryColor,
          child:
              const Image(image: AssetImage("assets/images/sobre_canva.png")),
        ),
        AnimatedPositioned(
          width: selected ? currentWidth : currentWidth,
          height: selected ? currentHeight : 100,
          top: selected ? 0 : 0,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            onVerticalDragStart: (details) {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: const ClipRRect(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20), top: Radius.zero),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/encontro_arte_natureza.png"),
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
