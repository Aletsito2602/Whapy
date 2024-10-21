import '/flutter_flow/flutter_flow_util.dart';
import 'more_products_widget.dart' show MoreProductsWidget;
import 'package:flutter/material.dart';

class MoreProductsModel extends FlutterFlowModel<MoreProductsWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
