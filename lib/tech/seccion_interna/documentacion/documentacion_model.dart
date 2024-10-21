import '/flutter_flow/flutter_flow_util.dart';
import 'documentacion_widget.dart' show DocumentacionWidget;
import 'package:flutter/material.dart';

class DocumentacionModel extends FlutterFlowModel<DocumentacionWidget> {
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
