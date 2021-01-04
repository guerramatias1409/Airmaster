import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenerateControllers extends StatelessWidget {
  final Widget child;

  GenerateControllers({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("generate controllers");

    return MultiProvider(
      providers: [
      ],
      child: child,
    );
  }
}
