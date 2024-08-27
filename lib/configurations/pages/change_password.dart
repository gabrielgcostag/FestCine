import 'package:festcine_pedraazul/auth/pages/login_page.dart';
import 'package:festcine_pedraazul/core/helpers/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  String newPassword = " ";
  final newPasswordController = TextEditingController();

  @override
  void dispose() {
    newPasswordController.dispose();
    super.dispose();
  }

  final currentUser = FirebaseAuth.instance.currentUser;
  changePassword() async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await currentUser?.updatePassword(newPassword);
      FirebaseAuth.instance.signOut();
      navigator.pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginPage(startsAtLogin: true),
        ),
      );
      scaffoldMessenger.showSnackBar(const SnackBar(
        backgroundColor: Colors.black26,
        content:
            Text('Sua senha foi alterada com sucesso! Faça o login novamente.'),
      ));
    } catch (error) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text(
            "Alterar senha",
            style: TextStyle(color: tertiaryColor),
          ),
          forceMaterialTransparency: true,
          iconTheme: const IconThemeData(color: tertiaryColor),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 24.0),
                          child: TextFormField(
                            controller: newPasswordController,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 6) {}
                              return null;
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: tertiaryColor)),
                              labelText: 'Senha Nova',
                              labelStyle: TextStyle(color: tertiaryColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 230, 114, 152)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              setState(() {
                                newPassword = newPasswordController.text;
                              });
                              changePassword();
                            }
                          },
                          child: const Text(
                            "Alterar Senha",
                            style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 2.2,
                                color: tertiaryColor),
                          ),
                        ),
                      ]),
                ))));
  }
}
