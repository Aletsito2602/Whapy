import '/components/tech_menu_mis_proyectos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mis_proyectos_widget.dart' show MisProyectosWidget;
import 'package:flutter/material.dart';

class MisProyectosModel extends FlutterFlowModel<MisProyectosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for TechMenuMisProyectos component.
  late TechMenuMisProyectosModel techMenuMisProyectosModel;

  @override
  void initState(BuildContext context) {
    techMenuMisProyectosModel =
        createModel(context, () => TechMenuMisProyectosModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    techMenuMisProyectosModel.dispose();
  }
}
