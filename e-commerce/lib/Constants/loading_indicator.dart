import 'package:loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';

loadinIndicator(Color color){
  return LoadingIndicator(
      indicatorType: Indicator.ballPulse, /// Required, The loading type of the widget
      colors: [color],       /// Optional, The color collections
      strokeWidth: 2,                     /// Optional, The stroke of the line, only applicable to widget which contains line
      backgroundColor: Colors.transparent,   /// Optional, the stroke backgroundColor
  );
}
