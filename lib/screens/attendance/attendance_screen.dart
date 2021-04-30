import 'package:farmacia_app/screens/attendance/components/contact_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AttendanceScreen extends StatelessWidget {
  final String telefone = "(87) 3864-2505";
  final String email = 'atendimento@farmaciamodelo.com.br';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Central de atendimento"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              "Nossos horários de atendimento é de segunda a domingo, das 08h às 21h. " +
                  "Porém, a qualquer momento você pode enviar uma mensagem para nós " +
                  "através dos nossos canais.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 20,
            ),
            ContactTile(
              text: telefone,
              icon: Icons.phone_rounded,
              onPressed: () async {
                await fazerLigacao();
              },
            ),
            ContactTile(
              text: email,
              icon: Icons.email_rounded,
              onPressed: () async {
                await abrirGmail();
              },
            ),
          ],
        ),
      ),
    );
  }

  abrirGmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: '${email}',
      query: 'subject=Contato via App&body=Detalhe aqui a sua necessidade: ',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  fazerLigacao() async {
    const url = "tel:8738642505";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
