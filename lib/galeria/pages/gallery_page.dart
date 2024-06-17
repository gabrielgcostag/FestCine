import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/galeria/pages/add_image_page.dart';
import 'package:festcine_pedraazul/galeria/services/gallery_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'details/details_page.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  bool userIsAdm = false;

  Future<void> _getUserIsAdm() async {
    try {
      await firebaseFirestore
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get()
          .then((DocumentSnapshot doc) {
        if (mounted) {
          setState(() {
            userIsAdm =
                (doc.data() as Map<String, dynamic>?)?['isAdm'] ?? false;
          });
        }
      });
    } catch (error) {
      print("Erro ao obter informações do usuário: $error");
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserIsAdm().onError((error, stackTrace) => null);
  }

  @override
  Widget build(BuildContext context) {
    final galleryService = context.read<GalleryService>();

    return Scaffold(
        floatingActionButton: userIsAdm
            ? FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddImagePage()),
                ),
              )
            : null,
        backgroundColor: primaryColor,
        body: ListenableBuilder(
          listenable: galleryService,
          builder: (context, child) => galleryService.isLoading
              ? const Center(child: CircularProgressIndicator())
              : SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 30,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              return RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                        imagePath: galleryService
                                            .images[index].imageUrl,
                                        title:
                                            galleryService.images[index].title,
                                        photographer: galleryService
                                            .images[index].photographer,
                                        details: galleryService
                                            .images[index].details,
                                        index: index,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'logo$index',
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        galleryService.images[index].imageUrl,
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: galleryService.images.length,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ));
  }
}

class ImageDetails {
  final String imageUrl;
  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    required this.imageUrl,
    required this.photographer,
    required this.title,
    required this.details,
  });
}
