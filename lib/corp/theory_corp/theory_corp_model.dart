import '/components/corp_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'theory_corp_widget.dart' show TheoryCorpWidget;
import 'package:flutter/material.dart';

class TheoryCorpModel extends FlutterFlowModel<TheoryCorpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for CorpMenu component.
  late CorpMenuModel corpMenuModel;

  @override
  void initState(BuildContext context) {
    corpMenuModel = createModel(context, () => CorpMenuModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    corpMenuModel.dispose();
  }
}
