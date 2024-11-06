import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
      gradient:  LinearGradient(
      colors: [Color(0xff2193b0), Color(0xff6dd5ed)],
      begin: Alignment.bottomLeft,
      end: Alignment.bottomRight,
    ),
         
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          color: Colors.white,
          icon,
          size: 28,
        ),
      ),
    );
  }
}