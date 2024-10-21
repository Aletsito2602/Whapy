import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'gracias_form_tech_model.dart';
export 'gracias_form_tech_model.dart';

class GraciasFormTechWidget extends StatefulWidget {
  const GraciasFormTechWidget({super.key});

  @override
  State<GraciasFormTechWidget> createState() => _GraciasFormTechWidgetState();
}

class _GraciasFormTechWidgetState extends State<GraciasFormTechWidget> {
  late GraciasFormTechModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraciasFormTechModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'GraciasFormTech',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 150.0,
                  height: 465.0,
                  child: RiveAnimation.asset(
                    'assets/rive_animations/breathing.riv',
                    artboard: '',
                    fit: BoxFit.cover,
                    controllers: _model.riveAnimationControllers,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
