import 'package:flutter/material.dart';
import '../view/ecommerce_custom_view.dart';

class EcommerceCustomController extends State<EcommerceCustomView> {
  static late EcommerceCustomController instance;
  late EcommerceCustomView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
}
