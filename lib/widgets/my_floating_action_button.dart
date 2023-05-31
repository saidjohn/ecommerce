
import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFE54660),
      child: const Image(
        image: AssetImage("assets/icons/ic_scaner.png"),
        width: 35,
      ),
      onPressed: () {},
    );
  }
}
