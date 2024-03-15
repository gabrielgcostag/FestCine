import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/galeria/pages/add_image_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'details/details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria1.jpg',
    photographer: 'Martin Andres',
    title: 'New Year',
    details:
        'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria2.jpg',
    photographer: 'Abraham Costa',
    title: 'Spring',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria3.jpg',
    photographer: 'Jamie Bryan',
    title: 'Casual Look',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria4.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria5.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria6.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria7.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria8.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria9.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria10.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria11.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria12.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageUrl: 'assets/images/galeria/galeria13.jpg',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
];

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final Reference firebaseStorageReference = FirebaseStorage.instance.ref();
  final List<ImageDetails> _images = [];
  bool _isLoading = true;
  bool userIsAdm = false;

  Future<void> _getUserIsAdm() async {
    await firebaseFirestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((DocumentSnapshot doc) => setState(() {
              userIsAdm =
                  (doc.data() as Map<String, dynamic>?)?['isAdm'] ?? false;
            }));
  }

  Future<void> _loadGalleryImages() async {
    await firebaseFirestore
        .collection('gallery_images')
        .orderBy('uploaded_at', descending: true)
        .get()
        .then((QuerySnapshot query) async {
      final List<String> imageNames = [];
      final List<Map<String, dynamic>?> documents = [];
      documents.addAll(query.docs.map(
          (QueryDocumentSnapshot doc) => doc.data() as Map<String, dynamic>?));
      imageNames.addAll(
        documents.map((Map<String, dynamic>? document) =>
            document?['image'] ?? 'galeria1.jpg'),
      );
      for (int index = 0; index < imageNames.length; index++) {
        _images.add(
          ImageDetails(
            imageUrl: await firebaseStorageReference
                .child(imageNames[index])
                .getDownloadURL(),
            photographer: documents[index]?['photographer'] ?? '',
            title: documents[index]?['title'] ?? '',
            details: documents[index]?['details'] ?? '',
          ),
        );
      }
    });
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getUserIsAdm();
    _loadGalleryImages();
  }

  @override
  Widget build(BuildContext context) {
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
      body: _isLoading
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
                                    imagePath: _images[index].imageUrl,
                                    title: _images[index].title,
                                    photographer: _images[index].photographer,
                                    details: _images[index].details,
                                    index: index,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'logo$index',
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:
                                        NetworkImage(_images[index].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: _images.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
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
