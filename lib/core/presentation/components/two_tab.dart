import 'package:cook_recipe/ui/color_styles.dart';
import 'package:cook_recipe/ui/text_styles.dart';
import 'package:flutter/material.dart';

class TwoTab extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final int gab;
  final void Function(int index) onChange;

  const TwoTab({
    super.key,
    required this.labels,
    this.selectedIndex = 0,
    required this.gab,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onChange(0);
          },
          child: _SelectedTab(
            text: labels[0],
          ),
        ),
        GestureDetector(
          onTap: () {
            onChange(1);
          },
          child: _UnselectedTab(
            text: labels[1],
          ),
        )
      ],
    );
  }
}

class _SelectedTab extends StatelessWidget {
  final String text;

  const _SelectedTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorStyles.primary100),
      child: SizedBox(
        // sizedbox가 성능상 컨테이너보다 좋다.
        height: 33,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyles.normalTextBold.copyWith(color: Colors.white),
            //copywith 사용 시, 런타임에 복사가 되기때문에 성능이 떨어질 수 있음. 민감할 경우 미리 다른 스타일을 만들어두면됨
          ),
        ),
      ),
    );
  }
}

class _UnselectedTab extends StatelessWidget {
  final String text;

  const _UnselectedTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorStyles.primary100),
      child: SizedBox(
        // sizedbox가 성능상 컨테이너보다 좋다.
        height: 33,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyles.normalTextBold.copyWith(color: Colors.white),
            //copywith 사용 시, 런타임에 복사가 되기때문에 성능이 떨어질 수 있음. 민감할 경우 미리 다른 스타일을 만들어두면됨
          ),
        ),
      ),
    );
  }
}
