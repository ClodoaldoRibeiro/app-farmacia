import 'package:farmacia_app/screens/menu/components/buttom_tile.dart';
import 'package:farmacia_app/screens/menu/components/menu_tili.dart';
import 'package:farmacia_app/screens/menu/components/sair_tile.dart';
import 'package:farmacia_app/screens/menu/components/session_tile.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: [
          Container(
            height: 150,
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/menina.png",
                  ),
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Clodoaldo Ribeiro Santos",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black54),
                      ),
                      FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Text(
                          "Alterar perfil",
                          softWrap: true,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: AppColors.COR_PALLETA,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SessionTile(
            title: "Minha conta",
          ),
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
          SessionTile(
            title: "Configurações",
          ),
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
          SessionTile(
            title: "Serviços",
          ),
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
          Container(height: 50,
          color: Colors.grey[100],
          child: Center(
            child: Text("${kVERSAO_APP}", style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.grey[600], fontSize: 16), ),
          ),),
        ],
      ),
    );
  }
}
