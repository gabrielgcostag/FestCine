import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/sala_daniel_dantas.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/sala_malu_mader.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/sala_marcos_caruso.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/sala_paulo_betti.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/sala_stenio_garcia.dart';
import 'package:festcine_pedraazul/salas_de_exibicao/pages/sala_tuna_dwek.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ExhibitionRoom extends StatefulWidget {
  const ExhibitionRoom({super.key});

  @override
  State<ExhibitionRoom> createState() => _ExhibitionRoomState();
}

class _ExhibitionRoomState extends State<ExhibitionRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: const IconThemeData(color: tertiaryColor),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              buildCard('assets/images/sala1.jpg', 'SALA STÊNIO GARCIA',
                  const StenioGarciaRoomSchedule()),
              const SizedBox(
                height: 40,
              ),
              buildCard('assets/images/sala2.jpg', 'SALA TUNA DWEK',
                  const TunaDweekRoomSchedule()),
              const SizedBox(
                height: 40,
              ),
              buildCard('assets/images/sala6.jpg', 'SALA PAULO BETTI',
                  const PauloBettiRoomSchedule()),
              const SizedBox(
                height: 40,
              ),
              buildCard('assets/images/sala4.jpg', 'SALA MARCOS CARUSO',
                  const MarcosCarusoRoomSchedule()),
              const SizedBox(
                height: 40,
              ),
              buildCard('assets/images/sala5.jpg', 'SALA MALU MADER',
                  const MaluMaderRoomSchedule()),
              const SizedBox(
                height: 40,
              ),
              buildCard('assets/images/sala3.jpg', 'SALA DANIEL DANTAS',
                  const DanielDantasRoomSchedule()),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String imagePath, String roomName, Widget schedulePage) {
    return Card.outlined(
      color: primaryColor,
      child: SizedBox(
        height: 350,
        width: 350,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: ImageWithLoadingIndicator(imagePath: imagePath),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              roomName,
              style: const TextStyle(
                  color: tertiaryColor, fontFamily: "Montserrat", fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(
                      width: 2, color: Color.fromARGB(255, 207, 144, 183)),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => schedulePage));
              },
              child: const Text(
                "Programação",
                style: TextStyle(color: tertiaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWithLoadingIndicator extends StatelessWidget {
  final String imagePath;

  const ImageWithLoadingIndicator({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: precacheImage(AssetImage(imagePath), context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          );
        } else {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
