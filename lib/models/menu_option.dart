// Del paquete actual solo quiero usar el IconData y el Widget
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route,
    required this.name,
    required this.screen,
    required this.icon,
  });
}
