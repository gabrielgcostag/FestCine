// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/award/pages/award_page.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/curadoria/pages/curadoria_page.dart';
import 'package:festcine_pedraazul/festival/the_festival_page.dart';
import 'package:festcine_pedraazul/galeria/pages/details/details_page.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
import 'package:festcine_pedraazul/galeria/services/gallery_service.dart';
import 'package:festcine_pedraazul/homenageada/honored_page.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final Reference firebaseStorageReference = FirebaseStorage.instance.ref();

  @override
  void initState() {
    super.initState();
    if (mounted) context.read<GalleryService>().loadImages();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final galleryService = context.read<GalleryService>();
    final today = DateTime.now();
    final targetDate = DateTime(today.year, 9, 11);
    final daysLeft = targetDate.isBefore(today)
        ? DateTime(today.year + 1, 9, 11).difference(today).inDays
        : targetDate.difference(today).inDays;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
            ),
            const SizedBox(
                width: 175,
                height: 175,
                child: Image(image: AssetImage('assets/images/LogoFCPA.png'))),
            Padding(
              padding: const EdgeInsets.only(top: 64),
              child: ListenableBuilder(
                listenable: galleryService,
                builder: (context, child) => galleryService.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : CarouselSlider(
                        options: CarouselOptions(
                          height: 200,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayInterval: const Duration(seconds: 8),
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: galleryService.images
                            .take(5)
                            .map(
                              (ImageDetails detail) => InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                        imagePath: detail.imageUrl,
                                        title: detail.title,
                                        photographer: detail.photographer,
                                        details: detail.details,
                                        index: null,
                                      ),
                                    ),
                                  );
                                },
                                child: CachedNetworkImage(
                                    progressIndicatorBuilder: (context, url,
                                            progress) =>
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(0, 5),
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Shimmer.fromColors(
                                            baseColor: Colors.grey.shade300,
                                            highlightColor:
                                                Colors.grey.shade100,
                                            child: Container(
                                              width: width * .8,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                    imageUrl: detail.imageUrl,
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.cover),
                                            color: const Color(0XFFD3D3D3),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          width: width * .8,
                                          height: 100,
                                        )),
                              ),
                            )
                            .toList(),
                      ),
              ),
            ),
            const SizedBox(height: 100),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TheFestivalPage(),
                          ),
                        ),
                        child: const Card(
                          color: primaryColor,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.movie,
                                  color: tertiaryColor,
                                ),
                                Text(
                                  'O Festival',
                                  style: TextStyle(
                                      color: tertiaryColor,
                                      fontFamily: 'Montserrat-Bold.ttf'),
                                )
                              ],
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HonoredPage(),
                          ),
                        ),
                        child: const Card(
                          color: primaryColor,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: tertiaryColor,
                                ),
                                Text(
                                  'Homenagens',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: tertiaryColor,
                                      fontFamily: 'Montserrat-Bold.ttf'),
                                )
                              ],
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          var url = Uri.https('filmfreeway.com');
                          await launchUrl(url);
                        },
                        child: const Card(
                          color: primaryColor,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.videocam,
                                  color: tertiaryColor,
                                ),
                                Text(
                                  'Inscrição',
                                  style: TextStyle(
                                      color: tertiaryColor,
                                      fontFamily: 'Montserrat-Bold.ttf'),
                                )
                              ],
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          var url = Uri.https(
                              'festcinepedraazul.com.br', 'indicados');
                          await launchUrl(url);
                        },
                        child: const Card(
                          color: primaryColor,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: tertiaryColor,
                                ),
                                Text(
                                  'Indicados',
                                  style: TextStyle(
                                      color: tertiaryColor,
                                      fontFamily: 'Montserrat-Bold.ttf'),
                                )
                              ],
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CuradoriaPage(),
                          ),
                        ),
                        child: const Card(
                          color: primaryColor,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.how_to_reg,
                                  color: tertiaryColor,
                                ),
                                Text(
                                  'Curadoria',
                                  style: TextStyle(
                                      color: tertiaryColor,
                                      fontFamily: 'Montserrat-Bold.ttf'),
                                )
                              ],
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AwardPage(),
                          ),
                        ),
                        child: const Card(
                          color: primaryColor,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.emoji_events,
                                  color: tertiaryColor,
                                ),
                                Text(
                                  'Premiação',
                                  style: TextStyle(
                                      color: tertiaryColor,
                                      fontFamily: 'Montserrat-Bold.ttf'),
                                )
                              ],
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Card(
                            color: Color.fromARGB(146, 177, 152, 101),
                            child: SizedBox(
                              width: 210,
                              height: 250,
                            ),
                          ),
                          Card(
                            color: primaryColor,
                            child: Container(
                              width: 200,
                              height: 240,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "FALTAM",
                                    style: TextStyle(
                                        color: secondaryColor, fontSize: 28),
                                  ),
                                  Text(
                                    "$daysLeft",
                                    style: const TextStyle(
                                        fontSize: 92,
                                        fontFamily: "Montserrat-bold",
                                        color: tertiaryColor),
                                  ),
                                  const Text(
                                    "DIAS",
                                    style: TextStyle(
                                        color: secondaryColor, fontSize: 28),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Column(
                    children: [
                      Text(
                        "Parceiros",
                        style: TextStyle(
                            color: tertiaryColor,
                            fontSize: 20,
                            fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: 340,
                            height: 100,
                            child: Image(
                                image: AssetImage(
                                    'assets/images/logo_sicredi.jpeg')),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image(
                                image: AssetImage(
                                    'assets/images/LogoVistaAzulHotel.png')),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image(
                                image: AssetImage(
                                    'assets/images/LogoMarlimAzul.jpg')),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image(
                                image: AssetImage(
                                    'assets/images/LogoDomingosMartins.jpg')),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
