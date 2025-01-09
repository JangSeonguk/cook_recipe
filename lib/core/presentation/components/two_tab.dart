import 'package:cook_recipe/ui/color_styles.dart';
import 'package:cook_recipe/ui/text_styles.dart';
import 'package:flutter/material.dart';

class TwoTab extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final double gab;
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
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChange(0);
            },
            child: selectedIndex == 0
                ? _SelectedTab(text: labels[0])
                : _UnselectedTab(text: labels[0]),
          ),
        ),
        SizedBox(
          width: gab,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChange(1);
            },
            child: selectedIndex == 1
                ? _SelectedTab(text: labels[1])
                : _UnselectedTab(text: labels[1]),
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
        height: 33,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyles.smallTextBold.copyWith(color: Colors.white),
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
          borderRadius: BorderRadius.circular(10), color: ColorStyles.white),
      child: SizedBox(
        height: 33,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyles.smallTextBold
                .copyWith(color: ColorStyles.primary100),
          ),
        ),
      ),
    );
  }
}
