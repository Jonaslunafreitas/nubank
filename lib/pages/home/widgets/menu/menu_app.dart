import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/menu/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({super.key, required this.top, required this.showMenu});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: <Widget>[
              Image.network(
                'https://raw.githubusercontent.com/Jonaslunafreitas/TrabalhoFrontEnd/main/Design%20sem%20nome%20(6)%20-%20Editado.png',
                height: 120,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              const Text.rich(
                TextSpan(
                  text: 'Banco ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: '260 • Nu Pagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              const Text.rich(
                TextSpan(
                  text: 'Agencia ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: '0001 • Conta 82763918-6',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    itemMenu(
                      icon: Icons.info_outline,
                      text: 'Me Ajuda',
                    ),
                    itemMenu(
                      icon: Icons.account_circle_outlined,
                      text: 'Editar Perfil',
                    ),
                    itemMenu(
                      icon: Icons.shield_outlined,
                      text: 'Segurança',
                    ),
                    itemMenu(
                      icon: Icons.attach_money,
                      text: 'Configurar Conta',
                    ),
                    itemMenu(
                      icon: Icons.phone_android_outlined,
                      text: 'Configurar App',
                    ),
                    itemMenu(
                      icon: Icons.notifications_outlined,
                      text: 'Notificações',
                    ),
                    itemMenu(
                      icon: Icons.highlight_remove_outlined,
                      text: 'Sair Do App',
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
