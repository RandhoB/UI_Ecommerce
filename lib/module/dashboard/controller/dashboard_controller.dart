import 'dart:math';

import 'package:flutter/material.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List menuList = [
    {
      "icon": Icons.shop,
      "title": "Create a Shop",
      "item_count": 01,
      "description": "Your Shops",
      "color": Colors.greenAccent,
    },
    {
      "icon": Icons.book,
      "title": "Shop Themes",
      "item_count": 33,
      "description": "Themes Available",
      "color": Colors.purpleAccent,
    },
    {
      "icon": Icons.boy_rounded,
      "title": "Product",
      "item_count": 24,
      "description": "Your Products",
      "color": Colors.yellowAccent,
    },
    {
      "icon": Icons.one_k_rounded,
      "title": "Orders",
      "item_count": 213,
      "description": "Order Created",
      "color": Colors.redAccent,
    },
    {
      "icon": Icons.message,
      "title": "Billing",
      "item_count": 24,
      "description": "Your Billing",
      "color": Colors.blueAccent,
    },
    {
      "icon": Icons.bus_alert,
      "title": "Delivery",
      "item_count": 50,
      "description": "Your Delivery",
      "color": Colors.orangeAccent,
    },
  ];

  double getRandom(int min, int max) {
    Random rnd;
    rnd = Random();
    return double.parse("${min + rnd.nextInt(max - min)}");
  }
}
