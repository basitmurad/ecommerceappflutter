import 'package:flutter/cupertino.dart';
import 'curved_edges.dart';

class CurvedEdgesWidgets extends StatelessWidget {
  const CurvedEdgesWidgets({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {

    return ClipPath(
        clipper: CurvedEdges(),
        child: child

    );
  }
}
