import '/components/tech_menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'whapy_tech_widget.dart' show WhapyTechWidget;
import 'package:flutter/material.dart';

class WhapyTechModel extends FlutterFlowModel<WhapyTechWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TechMenuHome component.
  late TechMenuHomeModel techMenuHomeModel;

  @override
  void initState(BuildContext context) {
    techMenuHomeModel = createModel(context, () => TechMenuHomeModel());
  }

  @override
  void dispose() {
    techMenuHomeModel.dispose();
  }
}
