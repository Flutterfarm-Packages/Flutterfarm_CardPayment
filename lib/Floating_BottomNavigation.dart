import 'package:flutter/material.dart';

class FloatingBottomNavBar extends StatefulWidget {
  final Color? navBarColor;
  final List Items;
  final bottomPadding;
  final double? navBarHeight;
  final MainAxisAlignment itemsAlignment;
  const FloatingBottomNavBar(
      {Key? key,
      this.navBarColor,
      required this.Items,
      required this.itemsAlignment,
      this.navBarHeight,
      this.bottomPadding})
      : super(key: key);

  @override
  _FloatingBottomNavBarState createState() => _FloatingBottomNavBarState();
}

class _FloatingBottomNavBarState extends State<FloatingBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.bottomPadding == null
          ? EdgeInsets.only(bottom: 0.0, right: 0, left: 0)
          : EdgeInsets.only(bottom: widget.bottomPadding, right: 10, left: 10),
      child: Container(
        height: widget.navBarHeight == null ? 65 : widget.navBarHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          color: widget.navBarColor == null ? Colors.white : widget.navBarColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: widget.itemsAlignment == null
                ? MainAxisAlignment.spaceBetween
                : widget.itemsAlignment,
            children: [
              for (int i = 0; i < widget.Items.length; i++) widget.Items[i]
            ],
          ),
        ),
      ),
    );
  }
}
