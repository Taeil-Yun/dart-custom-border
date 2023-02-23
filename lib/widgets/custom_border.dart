import 'package:flutter/material.dart';

class CustomerBorder extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double borderWidth,
      topLeftBorderLength,
      topRightBorderLength,
      bottomLeftBorderLength,
      bottomRightBorderLength,
      leftTopBorderLength,
      leftBottomBorderLength,
      rightTopBorderLength,
      rightBottomBorderLength;
  final EdgeInsetsGeometry borderPadding;

  CustomerBorder({
    Key key,
    @required this.child,
    @required this.borderColor,
    @required this.borderWidth,
    @required this.borderPadding,
    this.topLeftBorderLength,
    this.topRightBorderLength,
    this.bottomLeftBorderLength,
    this.bottomRightBorderLength,
    this.leftTopBorderLength,
    this.leftBottomBorderLength,
    this.rightTopBorderLength,
    this.rightBottomBorderLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          child: Stack(
            children: [
              // top-left horizontal border
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: borderColor,
                  width: topLeftBorderLength,
                  height: borderWidth,
                ),
              ),

              // bottom-left horizontal border
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  color: borderColor,
                  width: bottomLeftBorderLength,
                  height: borderWidth,
                ),
              ),

              // top-right horizontal border
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  color: borderColor,
                  width: topRightBorderLength,
                  height: borderWidth,
                ),
              ),

              // bottom-right horizontal border
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: borderColor,
                  width: bottomRightBorderLength,
                  height: borderWidth,
                ),
              ),

              // left-top vertical border
              Positioned(
                top: 0,
                left: 0,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    color: borderColor,
                    width: leftTopBorderLength,
                    height: borderWidth,
                  ),
                ),
              ),

              // left-bottom vertical border
              Positioned(
                bottom: 0,
                left: 0,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    color: borderColor,
                    width: leftBottomBorderLength,
                    height: borderWidth,
                  ),
                ),
              ),

              // right-top vertical border
              Positioned(
                top: 0,
                right: 0,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    color: borderColor,
                    width: rightTopBorderLength,
                    height: borderWidth,
                  ),
                ),
              ),

              // right-bottom vertical border
              Positioned(
                bottom: 0,
                right: 0,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    color: borderColor,
                    width: rightBottomBorderLength,
                    height: borderWidth,
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: borderPadding,
          child: child,
        ),
      ],
    );
  }
}
