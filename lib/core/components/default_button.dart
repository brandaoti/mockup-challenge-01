import 'package:flutter/material.dart';

import '../core.dart';

class DefaultButton extends StatelessWidget {
  final String? title;
  final double radius;

  final VoidCallback? onPressed;

  final Color primary;
  final Color onPrimary;

  final String image;
  final IconData icon;

  final bool isValidIcon;
  final bool isVisibleIcon;

  const DefaultButton({
    Key? key,
    this.title,
    this.onPressed,
    this.radius = 4.0,
    this.icon = Icons.add,
    this.isValidIcon = false,
    this.isVisibleIcon = false,
    this.image = Images.googleLogo,
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
    return Visibility(
      visible: !isVisibleIcon,
      child: _elevatedButton(),
      replacement: _elevatedButtonIcon(),
    );
  }

  Widget _elevatedButton() {
    return ElevatedButton(
      child: Text(
        title ?? '',
        style: TextStyles.signUpTitleStyle.copyWith(
          color: onPrimary,
        ),
      ),
      style: _buttonStyle(),
      onPressed: () => onPressed,
    );
  }

  Widget _elevatedButtonIcon() {
    return ElevatedButton.icon(
      icon: isValidIcon ? Icon(icon) : Image.asset(image, width: 16),
      label: Text(
        title ?? '',
        style: TextStyles.signUpTitleStyle.copyWith(
          color: onPrimary,
        ),
      ),
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
