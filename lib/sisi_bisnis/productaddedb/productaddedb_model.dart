import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/bookedwill_copy/bookedwill_copy_widget.dart';
import 'productaddedb_widget.dart' show ProductaddedbWidget;
import 'package:flutter/material.dart';

class ProductaddedbModel extends FlutterFlowModel<ProductaddedbWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BookedwillCopy component.
  late BookedwillCopyModel bookedwillCopyModel;

  @override
  void initState(BuildContext context) {
    bookedwillCopyModel = createModel(context, () => BookedwillCopyModel());
  }

  @override
  void dispose() {
    bookedwillCopyModel.dispose();
  }
}
