import 'package:farmacia_app/screens/menu/components/buttom_tile.dart';
import 'package:farmacia_app/screens/menu/components/menu_tili.dart';
import 'package:farmacia_app/screens/menu/components/sair_tile.dart';
import 'package:farmacia_app/screens/menu/components/session_%20header.dart';
import 'package:farmacia_app/screens/menu/components/session_tile.dart';
import 'package:farmacia_app/screens/menu/components/version_app.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: [
          SessionHeader(nome: "Clodoaldo Ribeiro"),
          //Senssão de dado do usuário
          SessionTile(title: "Minha conta"),
          MenuTile(
            icon: Icons.notifications_rounded,
            titulo: "Meus lembretes",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.assignment_rounded,
            titulo: "Meus pedidos",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.credit_card_rounded,
            titulo: "Meus cartões",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.location_on_rounded,
            titulo: "Meus endereços",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.vpn_key_rounded,
            titulo: "Alterar senha",
            onTap: () {},
          ),

          //Senssão de dado de configurações
          SessionTile(title: "Configurações"),
          MenuTile(
            icon: Icons.security_rounded,
            titulo: "Privadidade de dados",
            onTap: () {},
          ),
          ButtomTile(
            titulo: "Notificações",
            valeu: false,
            onChanged: (valeu) {},
          ),
          ButtomTile(
            titulo: "Localização",
            valeu: true,
            onChanged: (valeu) {},
          ),

          //Senssão de serviços do app
          SessionTile(title: "Serviços"),
          MenuTile(
            icon: Icons.help_rounded,
            titulo: "Ajuda",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.phone_rounded,
            titulo: "Central de relacionamento",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.business_rounded,
            titulo: "Lojas",
            onTap: () {},
          ),
          MenuTile(
            icon: Icons.star_rounded,
            titulo: "Avalie o apricativo",
            onTap: () {},
          ),
          SairTile(
            onTap: () {},
          ),
          VersionApp(),
        ],
      ),
    );
  }
}
