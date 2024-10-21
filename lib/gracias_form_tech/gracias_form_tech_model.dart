import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gracias_form_tech_widget.dart' show GraciasFormTechWidget;
import 'package:flutter/material.dart';

class GraciasFormTechModel extends FlutterFlowModel<GraciasFormTechWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList = [
    'Main Loop',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];

  @override
  void initState(BuildContext context) {
    for (var name in riveAnimationAnimationsList) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
      ));
    }
  }

  @override
  void dispose() {}
}
