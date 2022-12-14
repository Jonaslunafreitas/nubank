import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key, required this.showMenu}) : super(key: key);
  final bool showMenu;

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  late Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutExpo,
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            bottom: !widget.showMenu
                ? 0 + MediaQuery.of(context).padding.bottom
                : 0,
            left: value,
            right: value * -1,
            height: MediaQuery.of(context).size.height * 0.14,
            child: IgnorePointer(
              ignoring: widget.showMenu,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: !widget.showMenu ? 1 : 0,
                child: Container(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      ItemMenuBottom(
                        icon: Icons.person_add,
                        text: 'Idicar Amigos',
                      ),
                      ItemMenuBottom(
                        icon: Icons.phone_android,
                        text: 'Recarga de Celular',
                      ),
                      ItemMenuBottom(
                        icon: Icons.chat,
                        text: 'Cobrar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.monetization_on,
                        text: 'Empr??stimos',
                      ),
                      ItemMenuBottom(
                        icon: Icons.move_to_inbox,
                        text: 'Depositar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.mobile_screen_share,
                        text: 'Tranferir',
                      ),
                      ItemMenuBottom(
                        icon: Icons.format_align_center,
                        text: 'Ajustar Limite',
                      ),
                      ItemMenuBottom(
                        icon: Icons.chrome_reader_mode,
                        text: 'Pagar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.lock_open,
                        text: 'Bloquear cart??o',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
