import 'package:flutter/widgets.dart';

extension CoolResponsive on MediaQueryData {
  isTablet() {
    return this.size.width > 1024 && this.size.height > 720;
  }
}
