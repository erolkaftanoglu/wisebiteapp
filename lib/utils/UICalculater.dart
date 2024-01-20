import 'dart:io';

import 'package:flutter/material.dart';

class UICalculater {
  static double getScaledSize(BuildContext context) => Platform.isIOS
      ? MediaQuery.of(context).orientation == Orientation.landscape
          ? MediaQuery.of(context).size.width * .75
          : MediaQuery.of(context).size.height > 700
              ? MediaQuery.of(context).size.height * .45 //Iphone 8
              : MediaQuery.of(context).size.height * .52
      : //Iphone 8
      MediaQuery.of(context).size.height * .52; // Iphone 11 >
}
