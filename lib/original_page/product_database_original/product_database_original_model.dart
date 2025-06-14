import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/sidenavdrawer/sidenavdrawer_widget.dart';
import 'product_database_original_widget.dart'
    show ProductDatabaseOriginalWidget;
import 'package:flutter/material.dart';

class ProductDatabaseOriginalModel
    extends FlutterFlowModel<ProductDatabaseOriginalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for sidenavdrawer component.
  late SidenavdrawerModel sidenavdrawerModel;

  @override
  void initState(BuildContext context) {
    sidenavdrawerModel = createModel(context, () => SidenavdrawerModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sidenavdrawerModel.dispose();
  }
}
