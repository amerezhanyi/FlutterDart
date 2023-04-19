import 'package:flutter/material.dart';

class Menu {
  final String title;
  final String svgSrc;
  final VoidCallback onPress;

  Menu({
    required this.title,
    required this.svgSrc,
    required this.onPress,
  });
}

List adminMenu = [
  Menu(
    title: "Dashboard",
    svgSrc: "assets/icons/menu_dashboard.svg",
    onPress: () {},
  ),
  Menu(
    title: "Transaction",
    svgSrc: "assets/icons/menu_tran.svg",
    onPress: () {},
  ),
  Menu(
    title: "Task",
    svgSrc: "assets/icons/menu_task.svg",
    onPress: () {},
  ),
  Menu(
    title: "Documents",
    svgSrc: "assets/icons/menu_doc.svg",
    onPress: () {},
  ),
  Menu(
    title: "Store",
    svgSrc: "assets/icons/menu_store.svg",
    onPress: () {},
  ),
  Menu(
    title: "Notification",
    svgSrc: "assets/icons/menu_notification.svg",
    onPress: () {},
  ),
  Menu(
    title: "Profile",
    svgSrc: "assets/icons/menu_profile.svg",
    onPress: () {},
  ),
  Menu(
    title: "Settings",
    svgSrc: "assets/icons/menu_setting.svg",
    onPress: () {},
  ),
];
