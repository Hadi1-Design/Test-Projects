import 'package:flutter/material.dart';

class Roundedbutton extends StatelessWidget {
  // const Roundedbutton({super.key});
  final String btnname;
  final TextStyle? textstyle;
  final Color? bgcolor;
  final Icon? icon;
  final VoidCallback? callBack;
  Roundedbutton({
    required this.btnname,
    this.textstyle,
    this.bgcolor,
    this.icon,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: bgcolor,
        shadowColor: bgcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                SizedBox(width: 5),
                Container(height: 10),
                Text(btnname, style: textstyle),
              ],
            )
          : Text(btnname, style: textstyle),
    );
  }
}
