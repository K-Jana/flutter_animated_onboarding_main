import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../../../widgets/logo.dart';
import 'fade_slide_transition.dart';

class Header extends StatelessWidget {
  final Animation<double> animation;

  const Header({
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Logo(
            color: AppTheme.darkGrey,
            size: 48.0,
          ),
          const SizedBox(height: AppTheme.kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: Text(
              'Welcome to Learnera',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppTheme.kBlack, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
