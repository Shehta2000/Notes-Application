import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Constans.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        height: 50,
        
        decoration: BoxDecoration(
        gradient: const  LinearGradient(
      colors: [Color(0xff2193b0), Color(0xff6dd5ed)],
      begin: Alignment.bottomLeft,
      end: Alignment.bottomRight,
    ),
            borderRadius: BorderRadius.circular(
              30,
            )),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}