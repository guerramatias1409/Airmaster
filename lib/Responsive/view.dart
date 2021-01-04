import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class View<T> extends Widget {

  @protected
  Widget build(BuildContext context, T d);

  @override
  DataProviderElement<T> createElement(){
    return DataProviderElement<T>(this);
  }
}

class DataProviderElement<T> extends ComponentElement {
  DataProviderElement(View widget) : super(widget);

  @override
  View get widget => super.widget;

  @override
  Widget build() =>widget.build(this,Provider.of<T>(this));

  @override
  void update(View newWidget) {
    super.update(newWidget);
    assert(widget == newWidget);
    rebuild();
  }
}
