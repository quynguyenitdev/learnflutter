import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.color});
  final IconData icon;
  final String label;
  final Color color;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.icon, color: widget.color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: widget.color,
            ),
          ),
        ),
      ],
    );
  }
}
