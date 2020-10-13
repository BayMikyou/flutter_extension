import 'package:flutter/material.dart';

extension ExtSpace on Widget {
  Padding padding(
          {double left: 0, double top: 0, double right: 0, double bottom: 0}) =>
      Padding(
          padding: EdgeInsets.only(
              left: left, top: top, right: right, bottom: bottom),
          child: this);

  Padding paddingAll(double padding) =>
      Padding(padding: EdgeInsets.all(padding), child: this);

  Container margin(
          {double left: 0, double top: 0, double right: 0, double bottom: 0}) =>
      Container(
          margin: EdgeInsets.only(
              left: left, top: top, right: right, bottom: bottom),
          child: this);

  Container marginAll(double margin) =>
      Container(margin: EdgeInsets.all(margin), child: this);
}
