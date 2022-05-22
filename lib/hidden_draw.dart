import 'package:flutter/material.dart';
import 'package:hidden_drawer_hamber_menu/home_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'setting_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HeddenDrawState();
}

class _HeddenDrawState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _page=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page=[
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Homepage',
        baseStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white
        ),
        selectedStyle: TextStyle()
      ), HomePage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
          name: 'SettingsPage',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle()
      ), SettingsPage())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _page,
        backgroundColorMenu: Colors.deepPurple.shade200,
        initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 40,
    );
  }
}
