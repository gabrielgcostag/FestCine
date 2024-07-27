import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/galeria/pages/gallery_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

  Future<void> uploadImage({
    required String details,
    required String photographer,
    required String title,
    required XFile file,
  }) async {
    final imageName = '${DateTime.now().microsecondsSinceEpoch}.png';
    final UploadTask task = FirebaseStorage.instance.ref(imageName).putData(
          await file.readAsBytes(),
          SettableMetadata(contentType: 'image/jpeg'),
        );
    await firebaseFirestore.collection('gallery_images').add({
      'details': details,
      'image': imageName,
      'photographer': photographer,
      'title': title,
      'uploaded_at': DateTime.now(),
      'uploaded_by': FirebaseAuth.instance.currentUser?.uid,
    });
    final String url = await (await task).ref.getDownloadURL();
    images.add(
      ImageDetails(
        imageUrl: url,
        photographer: photographer,
        title: title,
        details: details,
      ),
    );
    notifyListeners();
  }
}
