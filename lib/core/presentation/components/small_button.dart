import 'package:cook_recipe/ui/color_styles.dart';
import 'package:cook_recipe/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  final Color color;
  final TextStyle textStyle;

  const SmallButton(
    this.text, {
    super.key,
    required this.onPressed,
    this.color = ColorStyles.primary100,
    this.textStyle = TextStyles.normalTextBold,
  });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
          widget.onPressed();
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
          height: 37,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _isPressed ? ColorStyles.gray4 : widget.color),
          child: SizedBox(
            // sizedbox가 성능상 컨테이너보다 좋다.
            width: 114,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                widget.text,
                style: widget.textStyle.copyWith(color: Colors.white),
                //copywith 사용 시, 런타임에 복사가 되기때문에 성능이 떨어질 수 있음. 민감할 경우 미리 다른 스타일을 만들어두면됨
              ),
            ),
          )),
    );
  }
}
