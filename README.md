# custom_border

Custom border for Flutter

## Getting Started
####Example
```
import 'package:Your Project/widgets/custom_border.dart';

@override
Widget build(Buildcontext context) {
  return Scaffold(
    appBar: AppBar(),
    body: CustomerBorder(
      borderColor: Color(0xFFe6a31b),
      borderWidth: 2.0,
      borderPadding: EdgeInsets.all(5.0),
      topLeftBorderLength: 15.0,
      topRightBorderLength: 15.0,
      bottomLeftBorderLength: 15.0,
      bottomRightBorderLength: 15.0,
      leftTopBorderLength: 15.0,
      leftBottomBorderLength: 15.0,
      rightTopBorderLength: 15.0,
      rightBottomBorderLength: 15.0,
      child: Container(
        color: Color(0xFFffffff),
      ),
    ),
  );
}
```
