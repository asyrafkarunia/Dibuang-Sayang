import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/sidenavdrawer/sidenavdrawer_widget.dart';
import '/index.dart';
import 'product_database_widget.dart' show ProductDatabaseWidget;
import 'package:flutter/material.dart';

class ProductDatabaseModel extends FlutterFlowModel<ProductDatabaseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FoodRecord> simpleSearchResults = [];
  // Model for sidenavdrawer component.
  late SidenavdrawerModel sidenavdrawerModel;

  @override
  void initState(BuildContext context) {
    sidenavdrawerModel = createModel(context, () => SidenavdrawerModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();

    sidenavdrawerModel.dispose();
  }
}
