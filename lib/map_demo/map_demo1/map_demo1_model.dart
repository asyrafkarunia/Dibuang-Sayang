import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'map_demo1_widget.dart' show MapDemo1Widget;
import 'package:flutter/material.dart';

class MapDemo1Model extends FlutterFlowModel<MapDemo1Widget> {
  ///  Local state fields for this page.

  String? addressesinput;

  ///  State fields for stateful widgets in this page.

  // State field(s) for MasukkanAlamat widget.
  final masukkanAlamatKey = GlobalKey();
  FocusNode? masukkanAlamatFocusNode;
  TextEditingController? masukkanAlamatTextController;
  String? masukkanAlamatSelectedOption;
  String? Function(BuildContext, String?)?
      masukkanAlamatTextControllerValidator;
  // State field(s) for inputaddress widget.
  final inputaddressKey = GlobalKey();
  FocusNode? inputaddressFocusNode;
  TextEditingController? inputaddressTextController;
  String? inputaddressSelectedOption;
  String? Function(BuildContext, String?)? inputaddressTextControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    masukkanAlamatFocusNode?.dispose();

    inputaddressFocusNode?.dispose();
  }
}
