import 'package:flutter/material.dart';

import '../core.dart';

class DefaultButton extends StatelessWidget {
  final Widget? title;
  final double radius;

  final VoidCallback? onPressed;

  final Color primary;
  final Color onPrimary;

  final Widget? icon;

  final bool isValidIcon;

  const DefaultButton({
    Key? key,
    this.icon,
    this.title,
    this.onPressed,
    this.radius = 4.0,
    this.isValidIcon = false,
    this.primary = AppColors.backgroundWhite,
    this.onPrimary = AppColors.backgroundBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      width: double.infinity,
      child: _child(),
    );
  }

  Widget _child() {
    return icon == null ? _elevatedButton() : _elevatedButtonIcon();
  }

  Widget _elevatedButton() {
    return ElevatedButton(
      child: title,
      style: _buttonStyle(),
      onPressed: () => onPressed,
    );
  }

  Widget _elevatedButtonIcon() {
    return ElevatedButton.icon(
      icon: icon!,
      label: title!,
      style: _buttonStyle(),
      onPressed: () {},
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      primary: primary,
      onPrimary: onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
