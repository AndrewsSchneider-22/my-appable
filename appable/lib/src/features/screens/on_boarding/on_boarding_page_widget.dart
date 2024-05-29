import 'package:appable/src/constraints/sizes.dart';
//import 'package:appable/src/constraints/text_strings.dart';
import 'package:appable/src/features/models/model_on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: model.height * 0.5,
           // width: model.width * 10.0,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
             const SizedBox(height: 10.0),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
