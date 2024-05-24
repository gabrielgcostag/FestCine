import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String photographer;
  final String details;
  final int index;
  const DetailsPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.photographer,
    required this.details,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: 'logo$index',
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                    image: NetworkImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          color: primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'By $photographer',
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        details,
                        style: const TextStyle(
                            fontSize: 16, fontFamily: "Montserrat-Bold.ttf"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
