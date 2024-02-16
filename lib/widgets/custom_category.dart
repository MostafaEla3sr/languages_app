import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.onTap,
      required this.img,
      required this.textColor,
      required this.height,
       this.imgPadding = 0,
       this.textPadding = 12});

  final String text, img;
  final Color backgroundColor, textColor;
  final VoidCallback onTap;
  final double height, imgPadding, textPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: -2,
                offset: Offset(0, 5),
                blurRadius: 5,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: imgPadding),
              child: Image.asset(
                img,
                width: MediaQuery.sizeOf(context).width/2.3,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: textPadding),
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
