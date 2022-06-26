import 'package:flutter/material.dart';

class SquareCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final TextStyle? textStyle;
  final IconData? iconData;
  final Color? iconColor;
  final void Function()? onTap;
  const SquareCardWidget({
    Key? key,
    required this.title,
    this.textStyle,
    this.onTap,
    this.image = '',
    this.iconColor,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * .3;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: width,
        width: width,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 211, 209, 209),
                blurRadius: .2, // soften the shadow
                spreadRadius: .2, //extend the shadow
                offset: Offset(
                  1, // Move to right 10  horizontally
                  1, // Move to bottom 10 Vertically
                ),
                blurStyle: BlurStyle.normal)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconData == null
                ? Image.asset(
                    image,
                    height: 60,
                    width: 60,
                  )
                : SizedBox(
                    height: 60,
                    width: 60,
                    child: Icon(
                      iconData,
                      color: iconColor,
                      size: 60,
                    ),
                  ),
            Text(
              title,
              style: textStyle ?? const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
