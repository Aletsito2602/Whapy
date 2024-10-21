import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'entryp_model.dart';
export 'entryp_model.dart';

class EntrypWidget extends StatefulWidget {
  const EntrypWidget({super.key});

  @override
  State<EntrypWidget> createState() => _EntrypWidgetState();
}

class _EntrypWidgetState extends State<EntrypWidget> {
  late EntrypModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntrypModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Lottie.asset(
        'assets/jsons/Animation_-_1727733742054.json',
        width: 500.0,
        height: 800.0,
        fit: BoxFit.contain,
        frameRate: FrameRate(90.0),
        animate: true,
      ),
    );
  }
}
