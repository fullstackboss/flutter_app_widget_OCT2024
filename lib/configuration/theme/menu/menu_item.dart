import 'package:flutter/material.dart';

class MenuItem {
  final String mytitle;
  final String mysubtitle;
  final String mylink;
  final IconData myicon;

  const MenuItem({
    required this.mytitle,
    required this.mysubtitle,
    required this.mylink,
    required this.myicon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    mytitle: 'Botones',
    mysubtitle: 'Opcion para botones',
    mylink: '/buttons',
    myicon: Icons.smart_button_outlined,
  ),
  MenuItem(
    mytitle: 'ListViews',
    mysubtitle: 'Opcion para ListViews',
    mylink: '/listviews',
    myicon: Icons.credit_card,
  ),
];
