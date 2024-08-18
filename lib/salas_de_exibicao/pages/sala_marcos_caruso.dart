import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class MarcosCarusoRoomSchedule extends StatefulWidget {
  const MarcosCarusoRoomSchedule({super.key});

  @override
  State<MarcosCarusoRoomSchedule> createState() =>
      _MarcosCarusoRoomScheduleState();
}

class _MarcosCarusoRoomScheduleState extends State<MarcosCarusoRoomSchedule> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<String>? imageUrls;

  @override
  void initState() {
    super.initState();
    _fetchImageUrls();
  }

  Future<void> _fetchImageUrls() async {
    try {
      DocumentSnapshot doc = await firebaseFirestore
          .collection('salas')
          .doc('marcos_caruso')
          .get();
      if (doc.exists) {
        setState(() {
          imageUrls = (doc.data() as Map<String, dynamic>?)?['imageUrls']
              ?.cast<String>();
        });
      }
    } catch (error) {
      print("Erro ao obter as URLs das imagens: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text(
          "Sala Marcos Caruso",
          style: TextStyle(color: tertiaryColor),
        ),
        forceMaterialTransparency: true,
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 150),
              if (imageUrls == null)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                ...imageUrls!.map((url) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)),
                        child: CachedNetworkImage(
                          imageUrl: url,
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
