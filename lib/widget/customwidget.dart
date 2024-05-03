import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget{
  final String teks;
  final double height; 
  final double width;
  final double fontsize;  
  final Color fontcolor;
  final Function() onPressed;
  final Color Latar;

  const WidgetButton({
    Key? key,
    required this.teks,
    this.height = 55.0, 
    this.width = 355.0, 
    this.fontsize = 17.0,
    required this.fontcolor,
    required this.onPressed,
    this.Latar =  const Color.fromARGB(57, 9, 227, 220),
  }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(teks,style: TextStyle(fontSize: fontsize,color: fontcolor)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Latar,
        ),
      ),
    );
  }
}