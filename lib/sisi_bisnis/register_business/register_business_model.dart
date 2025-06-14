import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'register_business_widget.dart' show RegisterBusinessWidget;
import 'package:flutter/material.dart';

class RegisterBusinessModel extends FlutterFlowModel<RegisterBusinessWidget> {
  ///  Local state fields for this page.

  LatLng? pinpointKoordinat;

  String? pinpointNama;

  ///  State fields for stateful widgets in this page.

  // State field(s) for NamaBisnis widget.
  FocusNode? namaBisnisFocusNode;
  TextEditingController? namaBisnisTextController;
  String? Function(BuildContext, String?)? namaBisnisTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for AlamatBisnis widget.
  FocusNode? alamatBisnisFocusNode;
  TextEditingController? alamatBisnisTextController;
  String? Function(BuildContext, String?)? alamatBisnisTextControllerValidator;
  // State field(s) for KodePos widget.
  FocusNode? kodePosFocusNode;
  TextEditingController? kodePosTextController;
  String? Function(BuildContext, String?)? kodePosTextControllerValidator;
  // State field(s) for Kota widget.
  FocusNode? kotaFocusNode;
  TextEditingController? kotaTextController;
  String? Function(BuildContext, String?)? kotaTextControllerValidator;
  // State field(s) for NoTelpon widget.
  FocusNode? noTelponFocusNode;
  TextEditingController? noTelponTextController;
  String? Function(BuildContext, String?)? noTelponTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namaBisnisFocusNode?.dispose();
    namaBisnisTextController?.dispose();

    alamatBisnisFocusNode?.dispose();
    alamatBisnisTextController?.dispose();

    kodePosFocusNode?.dispose();
    kodePosTextController?.dispose();

    kotaFocusNode?.dispose();
    kotaTextController?.dispose();

    noTelponFocusNode?.dispose();
    noTelponTextController?.dispose();
  }
}
