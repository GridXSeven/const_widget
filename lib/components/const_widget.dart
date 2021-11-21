import 'package:const_widget/components/should_rebuild_widget.dart';
import 'package:flutter/material.dart';

class ConstWidget extends StatelessWidget {
  final Widget child;
  ConstWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return ShouldRebuild(
      child: child,
      shouldRebuild: (n, o) {
        return false;
      },
    );
  }
}
