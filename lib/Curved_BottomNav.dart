import 'package:flutter/material.dart';

class CurvedBottomNavBar extends StatefulWidget {
  final Color? navBarColor;
  final List Items;
  final double curveRadius;
  final double? navBarHeight;
  final MainAxisAlignment itemsAlignment;
  const CurvedBottomNavBar(
      {Key? key,
      required this.curveRadius,
      this.navBarColor,
      required this.Items,
      required this.itemsAlignment,
      this.navBarHeight})
      : super(key: key);

  @override
  _CurvedBottomNavBarState createState() => _CurvedBottomNavBarState();
}

class _CurvedBottomNavBarState extends State<CurvedBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [];
    return Container(
      height: widget.navBarHeight == null ? 60 : widget.navBarHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
              widget.curveRadius == null ? 20 : widget.curveRadius),
          topRight: Radius.circular(
              widget.curveRadius == null ? 20 : widget.curveRadius),
        ),
        color: widget.navBarColor == null ? Colors.white : widget.navBarColor,
      ),
      child: Row(
        mainAxisAlignment: widget.itemsAlignment == null
            ? MainAxisAlignment.spaceBetween
            : widget.itemsAlignment,
        children: [
          for (int i = 0; i < widget.Items.length; i++) widget.Items[i]
        ],
      ),
    );
  }
}
