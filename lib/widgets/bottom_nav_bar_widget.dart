import 'package:flutter/material.dart';

Widget get bottomNavigationBarNew {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(40),
      topLeft: Radius.circular(40),
    ),
    child: BottomAppBar(
      elevation: 5,
      color: const Color(0xFFFFFFFF),
      height: 70,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/ic_home.png",
                    scale: 1.2,
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  "assets/icons/ic_category.png",
                  scale: 1.4,
                ),
                const Text(
                  "Category",
                  style: TextStyle(color: Color(0xFFCCCCCC)),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/icons/ic_heart.png",
                  scale: 1.3,
                ),
                const Text(
                  "Interest",
                  style: TextStyle(color: Color(0xFFCCCCCC)),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/icons/ic_person.png",
                  scale: 1.2,
                ),
                const Text(
                  "Profile",
                  style: TextStyle(color: Color(0xFFCCCCCC)),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}