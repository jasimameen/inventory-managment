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
    final width = MediaQuery.of(context).size.width;
    final sqareWidth = width * .3;
    final sqareMargin = (width - (sqareWidth * 3)) / 8;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: sqareWidth,
        constraints: BoxConstraints(
          minHeight: sqareWidth * .5,
          maxHeight: sqareWidth,
        ),
        margin: EdgeInsets.all(sqareMargin),
        child: PhysicalModel(
          color: const Color.fromARGB(255, 255, 255, 255),
          elevation: 8,
          shadowColor: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconData == null
                    ? Image.asset(
                        image,
                        height: 65,
                        width: 65,
                      )
                    : SizedBox(
                        height: 65,
                        width: 65,
                        child: Icon(
                          iconData,
                          color: iconColor,
                          size: 65,
                        ),
                      ),
                Text(
                  title,
                  style: textStyle ??
                      const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
