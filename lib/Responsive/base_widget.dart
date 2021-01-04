import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
  final Widget child;
  final Function(T) onControllerReady;
  BaseWidget({
    Key key,
    this.child,
    this.onControllerReady,
  }) : super(key: key);

  @override
  _BaseWidgetState<T> createState() => _BaseWidgetState<T>();
}

class _BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget<T>> {

  @override
  Widget build(BuildContext context) {
    if (widget.onControllerReady != null) {
      widget.onControllerReady(Provider.of<T>(context,listen: false));
    }

    return widget.child;
  }
}