import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'clips_model.dart';
export 'clips_model.dart';

class ClipsWidget extends StatefulWidget {
  const ClipsWidget({super.key});

  @override
  State<ClipsWidget> createState() => _ClipsWidgetState();
}

class _ClipsWidgetState extends State<ClipsWidget> {
  late ClipsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClipsModel());

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
        title: 'Clips',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            floatingActionButton: Align(
              alignment: const AlignmentDirectional(1.25, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 400.0),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    print('FloatingActionButton pressed ...');
                  },
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  label: Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Image.asset(
                      'assets/images/ICONOafiliados.png',
                      width: 150.0,
                      height: 142.0,
                      fit: BoxFit.contain,
                      alignment: const Alignment(1.0, 0.0),
                    ),
                  ),
                ),
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        StreamBuilder<List<ClipsRecord>>(
                          stream: queryClipsRecord(
                            queryBuilder: (clipsRecord) =>
                                clipsRecord.orderBy('fecha', descending: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<ClipsRecord> pageViewClipsRecordList =
                                snapshot.data!;

                            return SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: PageView.builder(
                                controller: _model.pageViewController ??=
                                    PageController(
                                        initialPage: max(
                                            0,
                                            min(
                                                0,
                                                pageViewClipsRecordList.length -
                                                    1))),
                                scrollDirection: Axis.vertical,
                                itemCount: pageViewClipsRecordList.length,
                                itemBuilder: (context, pageViewIndex) {
                                  final pageViewClipsRecord =
                                      pageViewClipsRecordList[pageViewIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowVideoPlayer(
                                          path: pageViewClipsRecord.clips,
                                          videoType: VideoType.network,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          autoPlay: true,
                                          looping: true,
                                          showControls: false,
                                          allowFullScreen: false,
                                          allowPlaybackSpeedMenu: false,
                                          pauseOnNavigate: false,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ]
                  .divide(const SizedBox(height: 0.0))
                  .addToStart(const SizedBox(height: 0.0))
                  .addToEnd(const SizedBox(height: 0.0)),
            ),
          ),
        ));
  }
}
