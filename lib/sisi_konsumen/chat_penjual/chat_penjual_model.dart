import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_konsumen/component/nav_bar_konsumen/nav_bar_konsumen_widget.dart';
import 'chat_penjual_widget.dart' show ChatPenjualWidget;
import 'package:flutter/material.dart';

class ChatPenjualModel extends FlutterFlowModel<ChatPenjualWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBarKonsumen component.
  late NavBarKonsumenModel navBarKonsumenModel;

  @override
  void initState(BuildContext context) {
    navBarKonsumenModel = createModel(context, () => NavBarKonsumenModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarKonsumenModel.dispose();
  }
}
