import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ExtBg on Widget {
  Widget background({
    Color bgColor,
    ImageProvider bgImage,
    BoxShape shape,
    double cornerRadius,
    double border,
    Color borderColor,
  }) {
    if(bgImage != null) {
      return Container(
        child: this,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: bgImage,
            fit: BoxFit.cover,
          ),
          shape: shape,
          border: Border.all(width: border, color: borderColor),
          borderRadius: BorderRadius.all(
            Radius.circular(
              cornerRadius,
            ),
          ),
        ),
      );
    } else {
      return Container(
        child: this,
        decoration: BoxDecoration(
          color: borderColor,
          shape: shape,
          border: Border.all(width: border, color: borderColor),
          borderRadius: BorderRadius.all(
            Radius.circular(
              cornerRadius,
            ),
          ),
        ),
      );
    }
  }
}
