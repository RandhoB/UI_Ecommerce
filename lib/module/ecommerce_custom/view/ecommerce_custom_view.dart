import 'package:flutter/material.dart';
import 'package:ui_ecommerce/core.dart';
import '../controller/ecommerce_custom_controller.dart';

class EcommerceCustomView extends StatefulWidget {
  const EcommerceCustomView({Key? key}) : super(key: key);

  Widget build(context, EcommerceCustomController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            Container(
              height: 100.0,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) {
            controller.selectedIndex = newIndex;
            // ignore: invalid_use_of_protected_member
            controller.setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<EcommerceCustomView> createState() => EcommerceCustomController();
}
