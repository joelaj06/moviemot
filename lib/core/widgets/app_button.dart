import 'dart:async';


import 'package:flutter/material.dart';
import 'package:movie_mot/core/themes/theme.dart';

import '../../constants/app_padding.dart';


class AppButton extends StatefulWidget {
    AppButton(
      {required this.onPressed,
      this.loading = false,
      this.enabled = true,
      required this.text,
        this.fontSize,
        this.backgroundColor =PrimaryColor.color,
        this.padding,
      Key? key})
      : super(key: key);

  final VoidCallback onPressed;
  final bool loading;
  final bool enabled;
  final String text;
  late  Color backgroundColor;
  final double? fontSize;
  final EdgeInsets? padding;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {

  late Color backupColor;

  @override
  void initState() {
    // widget.backgroundColor = SecondaryColor.color;
    backupColor = widget.backgroundColor;
    super.initState();
  }

  void changeColor(){
    setState(() {
      widget.backgroundColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: AppPaddings.mA,
      child: GestureDetector(
        onTap: () {
           if(widget.loading || !widget.enabled){
             return;
           }
           widget.onPressed();
          changeColor();
          Future<dynamic>.delayed(const Duration(milliseconds: 100), () {
            setState(() {
              widget.backgroundColor =backupColor; // Restore to default color after tapping
            });
          });
        },
        child: AnimatedContainer(
          // width: width / 2,
          padding: widget.padding ?? AppPaddings.lA,
          decoration: BoxDecoration(
            color: widget.enabled
                ? widget.backgroundColor
                : HintColor.color.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          duration: const Duration(
            milliseconds: 300,
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                widget.text,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: widget.enabled || widget.loading
                        ? Colors.white
                        : HintColor.color.shade50.withOpacity(0.5),
                    fontSize: widget.fontSize?? 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
