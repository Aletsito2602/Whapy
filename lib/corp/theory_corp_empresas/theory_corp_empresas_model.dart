import '/components/corp_menu_mis_empresas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'theory_corp_empresas_widget.dart' show TheoryCorpEmpresasWidget;
import 'package:flutter/material.dart';

class TheoryCorpEmpresasModel
    extends FlutterFlowModel<TheoryCorpEmpresasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for CorpMenuMisEmpresas component.
  late CorpMenuMisEmpresasModel corpMenuMisEmpresasModel;

  @override
  void initState(BuildContext context) {
    corpMenuMisEmpresasModel =
        createModel(context, () => CorpMenuMisEmpresasModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    corpMenuMisEmpresasModel.dispose();
  }
}
