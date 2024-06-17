import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class GalleryService extends ChangeNotifier {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final Reference firebaseStorageReference = FirebaseStorage.instance.ref();
  bool isLoading = true;
  final List<ImageDetails> images = [];

  Future<void> loadImages() async {
    if (images.isNotEmpty) return;
    try {
      await firebaseFirestore
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get()
          .then((DocumentSnapshot doc) async {
        await firebaseFirestore
            .collection('gallery_images')
            .orderBy('uploaded_at', descending: true)
            .get()
            .then((QuerySnapshot query) async {
          final List<String> imageNames = [];
          final List<Map<String, dynamic>?> documents = [];
          documents.addAll(query.docs.map((QueryDocumentSnapshot doc) =>
              doc.data() as Map<String, dynamic>?));
          imageNames.addAll(
            documents.map((Map<String, dynamic>? document) =>
                document?['image'] ?? 'galeria1.jpg'),
          );
          for (int index = 0; index < imageNames.length; index++) {
            images.add(
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
          isLoading = false;
          notifyListeners();
        });
      });
    } catch (error) {
      print("Erro ao obter informações do usuário: $error");
    }
  }
}
