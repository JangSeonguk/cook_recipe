import 'package:cook_recipe/core/presentation/components/big_button.dart';
import 'package:cook_recipe/core/presentation/components/filter_button.dart';
import 'package:cook_recipe/core/presentation/components/input_field.dart';
import 'package:cook_recipe/core/presentation/components/medium_button.dart';
import 'package:cook_recipe/core/presentation/components/rating_button.dart';
import 'package:cook_recipe/core/presentation/components/small_button.dart';
import 'package:cook_recipe/core/presentation/components/two_tab.dart';
import 'package:cook_recipe/core/presentation/dialogs/rating_dialog.dart';
import 'package:cook_recipe/ui/text_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Components",
          style: TextStyles.largeTextBold,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BigButton(
              'Button',
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MediumButton(
              'Button',
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmallButton(
              'Button',
              onPressed: () {},
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: InputField(label: 'Label', placeholder: 'Placeholder'),
          ),
          const FilterButton(
            "text",
          ),
          const FilterButton(
            "text",
            isSelected: true,
          ),
          const RatingButton(
            "5",
          ),
          const RatingButton(
            "5",
            isSelected: true,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TwoTab(
              labels: const ["label 1", "label 2"],
              gab: 15,
              onChange: (int index) {
                print(index);
              },
            ),
          ),
          // const TwoTab(
          //   labels: ["label 1", "label 2", "label 3"],
          //   gab: 15,
          //   selectedIndex: 1,
          // ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return RatingDialog(
                        title: "Rate recipe",
                        score: 3,
                        actionName: "send",
                        onChange: (score) {
                          print(score);
                        });
                  },
                );
              },
              child: const Text('Rating')),
        ],
      ),
    );
  }
}
