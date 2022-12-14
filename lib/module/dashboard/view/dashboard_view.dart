import 'package:flutter/material.dart';
import 'package:ui_ecommerce/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("UI Bagas"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              LayoutBuilder(builder: (context, constraint) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.menuList.length,
                    (index) {
                      var item = controller.menuList[index];
                      var size = (constraint.biggest.width / 2) - 10;
                      return Container(
                        height: size * 1.1,
                        width: size,
                        decoration: BoxDecoration(
                          color: item["color"],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        item["icon"],
                                        size: 36,
                                        color: Colors.white,
                                      ),
                                      const Icon(
                                        Icons.arrow_circle_right,
                                        size: 36,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    item["title"],
                                    style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Expanded(child: Text("")),
                                  Text(
                                    item["item_count"].toString(),
                                    style: const TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    item["description"],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: -20,
                              bottom: -20,
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.4),
                                radius: 50,
                              ),
                            ),
                            Positioned(
                              right: controller.getRandom(20, 70),
                              bottom: 90,
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.4),
                                radius: 20,
                              ),
                            ),
                            Positioned(
                              right: controller.getRandom(60, 100),
                              bottom: 40,
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.4),
                                radius: 10,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
