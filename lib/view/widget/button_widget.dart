import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/controller/home_controller.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.onPressed, required this.index, this.fontSize=12,
  });
  final String text;
  final void Function()? onPressed;
  final int index;

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  8.0),
      child: Consumer(
        builder: (context,HomeController value,_) {
          return ElevatedButton(
            
              style: ElevatedButton.styleFrom(
                padding:EdgeInsets.zero ,
                  backgroundColor:index==value.selectedIndex?Colors.orange: Colors.grey,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              onPressed: onPressed,
              child: Text(
                text,
                style:  TextStyle(color: Colors.white,fontSize: fontSize),
              ));
        }
      ),
    );
  }
}