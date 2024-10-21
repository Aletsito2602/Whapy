import '/flutter_flow/flutter_flow_util.dart';
import 'reunion_tech_widget.dart' show ReunionTechWidget;
import 'package:flutter/material.dart';

class ReunionTechModel extends FlutterFlowModel<ReunionTechWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
