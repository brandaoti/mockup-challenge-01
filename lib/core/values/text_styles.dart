import 'dart:ui';

import 'package:challenge_01/core/core.dart';
import 'package:flutter/cupertino.dart';

abstract class TextStyles {
  static const TextStyle loginTitleStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.backgroundWhite,
  );

  static const TextStyle signUpTitleStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.backgroundWhite,
  );
}
