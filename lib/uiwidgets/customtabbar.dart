import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final Function(int) tabBarClickedCallback;
  int selectedindex;

  CustomTabBar(this.tabBarClickedCallback, this.selectedindex);

  @override
  State<StatefulWidget> createState() {
    return CustomTabBarState();
  }
}

class CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          currentIndex: widget.selectedindex,
          onTap: (int a) => {widget.tabBarClickedCallback(a)},
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Kochbuch',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.chat),
            //   label: 'Chats',
            // ),
          ],
        ),
      ),
    );
  }
}
