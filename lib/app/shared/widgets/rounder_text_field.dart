import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  final IconData icon;
  final IconData suffixIcon;
  final Color iconColor;
  final bool obscureText;
  const RoundedTextField({
    Key key,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
    this.icon,
    this.suffixIcon,
    this.iconColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: colorScheme.onBackground,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        cursorColor: colorScheme.primary,
        style: TextStyle(color: colorScheme.onPrimary),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: textTheme.subtitle1.copyWith(
            color: colorScheme.onPrimary.withOpacity(0.5),
          ),
          icon: Icon(
            icon,
            color: iconColor,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: iconColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
