import 'package:farmacia_app/screens/changepassword/change_password_screen.dart';
import 'package:farmacia_app/screens/menu/components/menu_tili.dart';
import 'package:farmacia_app/screens/menu/components/session_tile.dart';
import 'package:flutter/material.dart';

class UserSessionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          icon: Icons.favorite,
          titulo: "Meus favoritos",
          onTap: () {},
        ),
        MenuTile(
          icon: Icons.shopping_basket_sharp,
          titulo: "Minha cesta",
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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChangePasswordScreen(),
            ));
          },
        ),
      ],
    );
  }
}
