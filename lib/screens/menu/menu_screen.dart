import 'package:farmacia_app/screens/menu/components/buttom_tile.dart';
import 'package:farmacia_app/screens/menu/components/menu_tili.dart';
import 'package:farmacia_app/screens/menu/components/sair_tile.dart';
import 'package:farmacia_app/screens/menu/components/session_%20header.dart';
import 'package:farmacia_app/screens/menu/components/session_tile.dart';
import 'package:farmacia_app/screens/menu/components/user_session_tile.dart';
import 'package:farmacia_app/screens/menu/components/version_app.dart';
import 'package:farmacia_app/screens/widgets/dialog_yes_no.dart';
import 'package:farmacia_app/stores/user_manager_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserManagerStore managerStore = GetIt.I<UserManagerStore>();

    return SafeArea(
      child: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8),
          children: [
            Observer(
              builder: (context) {
                return SessionHeader(user: managerStore.user);
              },
            ),
            //Senssão de dado do usuário

            Observer(
              builder: (context) {
                if (managerStore.isLoggedIn) return UserSessionTile();
                return Container();
              },
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
              titulo: "Avalie o aplicativo",
              onTap: () {},
            ),
            Observer(
              builder: (context) {
                if (managerStore.isLoggedIn)
                  return SairTile(onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return DialogEysNo(
                          title: "Sair do aplicativo",
                          content: "Deseja sair de sua conta?",
                          onPressedEys: () {
                            print("Saindo do app...");
                            managerStore.logout();
                            Navigator.pop(context);
                          },
                          onPressedNo: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
                  });
                else
                  return Container();
              },
            ),
            VersionApp(),
          ],
        ),
      ),
    );
  }
}
