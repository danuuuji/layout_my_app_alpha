import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/ui/navigation/main_navigator.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});
  void navigateToMainscreen() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(MainNavigationRouteNames.mainScreen),
              child: Text('Авторизоваться',
                  style: Theme.of(context).textTheme.labelLarge))
        ],
      ),
    ));
  }
}
