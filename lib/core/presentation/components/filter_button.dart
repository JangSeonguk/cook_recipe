import 'package:cook_recipe/ui/color_styles.dart';
import 'package:cook_recipe/ui/text_styles.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const FilterButton(
    this.text, {
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
            color: isSelected ? ColorStyles.primary100 : ColorStyles.primary80),
        backgroundColor:
            isSelected ? ColorStyles.primary100 : ColorStyles.white,
        label: Text(
          text,
          style: TextStyles.smallTextRegular.copyWith(
            color: isSelected ? ColorStyles.white : ColorStyles.primary80,
          ),
        ));
  }
}
