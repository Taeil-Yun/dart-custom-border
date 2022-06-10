class TextLayoutHelper {
  TextLayoutHelper._();

  //특정 텍스트의 크기 구하기
  static Size getTextSize({
    required String text,
    required TextStyle style,
    int? maxLines,
    TextDirection? textDirection,
  }) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLines ?? 1,
      textDirection: textDirection ?? TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  //텍스트 overflow 여부 구하기
  static bool hasTextOverflow({
    required String text,
    required TextStyle style,
    double minWidth = 0,
    double maxWidth = double.infinity,
    int maxLines = 2,
  }) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: minWidth, maxWidth: maxWidth);
    return textPainter.didExceedMaxLines;
  }

  //텍스트 줄 수에 따른 높이 구하기
  static double getTextLineHeight({
    required int lines,
    required TextStyle style,
    TextDirection? textDirection,
  }) {
    return getTextSize(
      text: '\n' * lines,
      maxLines: lines,
      style: style,
      textDirection: textDirection,
    ).height;
  }
}
