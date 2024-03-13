import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festcine_pedraazul/auth/services/auth_service.dart';
import 'package:festcine_pedraazul/home/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.startsAtLogin}) : super(key: key);

  final bool startsAtLogin;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();
  final confirmarSenha = TextEditingController();
  bool passwordObscureText = true;
  bool confirmPasswordObscureText = true;

  late bool isLogin;
  late String titulo;
  late String actionButton;
  late String toggleButton;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    setFormAction(true);
    setState(() {
      isLogin = widget.startsAtLogin;
    });
  }

  setFormAction(bool acao) {
    setState(() {
      isLogin = acao;
    });
  }

  login() async {
    setState(() => loading = true);
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await context.read<AuthService>().login(email.text, senha.text);
      if (FirebaseAuth.instance.currentUser?.uid == null) {
        throw AuthException('Email ou senha incorretos');
      }
      navigator.pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } on AuthException catch (e) {
      setState(() => loading = false);
      scaffoldMessenger.showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  registrar() async {
    setState(() => loading = true);
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await context.read<AuthService>().registrar(email.text, senha.text);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .set({
        'email': email.text,
        'nome': nome.text,
        'isAdm': false,
      });
      // Pegando dados do user
      // await FirebaseFirestore.instance
      //     .collection('users')
      //     .doc(FirebaseAuth.instance.currentUser?.uid)
      //     .get()
      //     .then((DocumentSnapshot doc) =>
      //         print((doc.data()! as Map<String, dynamic>)['nome']));
      // Fim :)
      if (FirebaseAuth.instance.currentUser?.uid == null) {
        throw AuthException(
          'Ocorreu um erro no seu registro, verifique as informações fornecidas',
        );
      }
      navigator.pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } on AuthException catch (e) {
      setState(() => loading = false);
      scaffoldMessenger.showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLogin ? 'Bem vindo' : 'Crie sua conta',
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.5,
                  ),
                ),
                if (!isLogin)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 24.0),
                    child: TextFormField(
                      controller: nome,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Informe o nome corretamente!';
                        }
                        return null;
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o email corretamente!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: TextFormField(
                    controller: senha,
                    obscureText: passwordObscureText,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          passwordObscureText = !passwordObscureText;
                        }),
                        icon: Icon(
                          passwordObscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      labelText: 'Senha',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informa sua senha!';
                      } else if (value.length < 6) {
                        return 'Sua senha deve ter no mínimo 6 caracteres';
                      }
                      return null;
                    },
                  ),
                ),
                if (!isLogin)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 24.0),
                    child: TextFormField(
                      controller: confirmarSenha,
                      obscureText: confirmPasswordObscureText,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () => setState(() {
                            confirmPasswordObscureText =
                                !confirmPasswordObscureText;
                          }),
                          icon: Icon(
                            confirmPasswordObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: 'Confirme sua Senha',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value != senha.text) {
                          return 'As senhas não correspondem';
                        }
                        return null;
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (isLogin) {
                          login();
                        } else {
                          registrar();
                        }
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: (loading)
                          ? [
                              const Padding(
                                padding: EdgeInsets.all(16),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ]
                          : [
                              const Icon(Icons.check),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  isLogin ? 'Login' : 'Cadastrar',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => setFormAction(!isLogin),
                  child: Text(
                    isLogin
                        ? 'Ainda não tem conta? Cadastre-se agora.'
                        : 'Voltar ao Login.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
