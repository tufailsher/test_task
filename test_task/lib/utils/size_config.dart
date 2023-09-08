import 'package:flutter/material.dart';
/// Created by Riasat Ali on 10.07.2020
/// Copyright © 2020 Riasat Ali . All rights reserved.

 late SizeConfig sizeConfig;
class SizeConfig {
  final double _deviceHeight;
  final double _deviceWidth;
  final double _textScale;
  final EdgeInsets _safeArea;
  SizeConfig._internal(this._deviceHeight, this._deviceWidth, this._textScale,
      this._safeArea);
  static SizeConfig init(context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double deviceHeight = mediaQuery.size.height;
    final double deviceWidth = mediaQuery.size.width;
    final double textScale = mediaQuery.textScaleFactor;
    final EdgeInsets safeArea = mediaQuery.padding;
    return SizeConfig._internal(deviceHeight, deviceWidth, textScale, safeArea);
  }
  double text(double size) {
    // assert(_textScale != null);
    return _textScale * size;
  }
  double height(double size) {
    // assert(_deviceHeight != null);
    return _deviceHeight * size;
  }
  double width(double size) {
    assert(size <= 1);
    // assert(_deviceWidth != null);
    return _deviceWidth * size;
  }
  // EdgeInsets get safeArea => this._safeArea;
  EdgeInsets get safeArea => _safeArea;
}