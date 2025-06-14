import '/flutter_flow/flutter_flow_util.dart';
import 'maps_copy_widget.dart' show MapsCopyWidget;
import 'package:flutter/material.dart';

class MapsCopyModel extends FlutterFlowModel<MapsCopyWidget> {
  ///  Local state fields for this page.

  String? addressinput;

  ///  State fields for stateful widgets in this page.

  // State field(s) for InputAddress widget.
  final inputAddressKey = GlobalKey();
  FocusNode? inputAddressFocusNode;
  TextEditingController? inputAddressTextController;
  String? inputAddressSelectedOption;
  String? Function(BuildContext, String?)? inputAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputAddressFocusNode?.dispose();
  }
}
