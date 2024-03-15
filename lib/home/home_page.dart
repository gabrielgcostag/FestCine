import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final Reference firebaseStorageReference = FirebaseStorage.instance.ref();
  final List<String> _galleryImages = [];
  late final String _userName;
  bool _isLoading = true;

  Future<void> _loadUserName() async {
    await firebaseFirestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((DocumentSnapshot doc) =>
            _userName = (doc.data() as Map<String, dynamic>?)?['nome'] ?? '');
  }

  Future<void> _loadGalleryImages() async {
    await firebaseFirestore
        .collection('gallery_images')
        .orderBy('uploaded_at', descending: true)
        .limit(5)
        .get()
        .then((QuerySnapshot query) async {
      final List<String> imageNames = [];
      imageNames.addAll(
        query.docs.map((QueryDocumentSnapshot doc) =>
            ((doc.data() as Map<String, dynamic>?)?['image'] ?? 'galeria1.jpg')
                as String),
      );
      for (final image in imageNames) {
        _galleryImages.add(
          await firebaseStorageReference.child(image).getDownloadURL(),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Future.wait([
      _loadUserName(),
      _loadGalleryImages(),
    ]).then((value) => setState(() {
          _isLoading = false;
        }));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: primaryColor,
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Center(
                      child: Text(
                        'Seja muito bem-vindo, $_userName!',
                        style: textTheme.titleLarge?.copyWith(
                          fontFamily: 'Montserrat',
                          color: tertiaryColor,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Últimas Imagens Adicionadas:',
                    style:
                        textTheme.titleMedium?.copyWith(color: tertiaryColor),
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
                      viewportFraction: 0.8,
                    ),
                    items: _galleryImages
                        .map(
                          (String imagePath) => Image.network(imagePath,
                              fit: BoxFit.cover,
                              frameBuilder: (
                                context,
                                child,
                                frame,
                                wasSynchronouslyLoaded,
                              ) =>
                                  Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      color: const Color(0XFFD3D3D3),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    width: width * .8,
                                    height: 100,
                                    child: child,
                                  )),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Conheça também:',
                    style:
                        textTheme.titleMedium?.copyWith(color: tertiaryColor),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Scaffold(appBar: AppBar()),
                            ),
                          ),
                          child: const Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Center(child: Icon(Icons.abc)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Scaffold(appBar: AppBar()),
                            ),
                          ),
                          child: const Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Center(child: Icon(Icons.abc)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Scaffold(appBar: AppBar()),
                            ),
                          ),
                          child: const Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Center(child: Icon(Icons.abc)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
