import 'package:flutter/material.dart';

class PrivacySecurityPage extends StatelessWidget {
  const PrivacySecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacidade e segurança"),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(30)),
              Text(
                "Políticas de \n Privacidade e Segurança",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "    O FestCine Pedra Azul está comprometido em proteger a privacidade e a segurança de todos os usuários do nosso aplicativo. Esta política descreve as medidas que tomamos para garantir a proteção dos dados pessoais dos usuários e garantir uma experiência segura durante o uso do aplicativo.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Coleta de Dados",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "  •  Informações do Perfil do Usuário: Para melhorar sua experiência no aplicativo, podemos coletar informações fornecidas voluntariamente, como nome e endereço de e-mail. Esses dados são usados apenas para personalizar a sua experiência e não são compartilhados com terceiros sem o seu consentimento.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Uso de Dados",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "  •  Personalização da Experiência do Usuário: As informações coletadas podem ser usadas para personalizar a sua experiência no aplicativo. \n •  Comunicações: Podemos usar o seu endereço de e-mail para enviar notificações sobre atualizações do aplicativo, mudanças na programação do festival, ou outras informações importantes relacionadas ao FestCine Pedra Azul.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Segurança dos Dados",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "  •  Proteção de Dados: Implementamos medidas de segurança para proteger os seus dados contra acesso não autorizado, uso indevido ou alteração.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Compartilhamento de Dados",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "  •  Não Venda de Dados: Nunca venderemos ou compartilharemos suas informações pessoais com terceiros para fins de marketing ou publicidade sem o seu consentimento explícito.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
