import 'package:flutter/widgets.dart';

extension ContextDimensionsX on BuildContext {
  Size get size => MediaQuery.sizeOf(this);

  double get width => size.width;

  double get height => size.height;
}
