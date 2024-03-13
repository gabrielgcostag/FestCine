import 'package:festcine_pedraazul/auth/pages/welcome_page.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManagePage extends StatelessWidget {
  const ManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Gerenciar conta")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            SizedBox(height: 40),
            const Row(
              children: [
                Icon(Icons.person, color: primaryColor),
                SizedBox(width: 10),
                Text(
                  "Gerenciamento da Conta",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                side: BorderSide(color: Colors.white),
              ),
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Confirmação'),
                  content: const Text(
                      'Você tem certeza que deseja deletar a sua conta? Essa operação não pode ser desfeita.'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Não')),
                    ElevatedButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.currentUser?.delete();
                          Navigator.of(context)
                            ..pop()
                            ..pushReplacement(MaterialPageRoute(
                              builder: (context) => WelcomePage(),
                            ));
                        },
                        child: const Text('Sim')),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Deletar conta",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.red[600])),
                  const Icon(
                    Icons.block,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
