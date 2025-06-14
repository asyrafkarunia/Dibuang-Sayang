import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'store_maps_widget.dart' show StoreMapsWidget;
import 'package:flutter/material.dart';

class StoreMapsModel extends FlutterFlowModel<StoreMapsWidget> {
  ///  Local state fields for this page.

  String? addressinput = 'address';

  String? inputpassing;

  List<String> lokasiuser = [];
  void addToLokasiuser(String item) => lokasiuser.add(item);
  void removeFromLokasiuser(String item) => lokasiuser.remove(item);
  void removeAtIndexFromLokasiuser(int index) => lokasiuser.removeAt(index);
  void insertAtIndexInLokasiuser(int index, String item) =>
      lokasiuser.insert(index, item);
  void updateLokasiuserAtIndex(int index, Function(String) updateFn) =>
      lokasiuser[index] = updateFn(lokasiuser[index]);

  LatLng? currentlocation;

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for inputaddress widget.
  final inputaddressKey = GlobalKey();
  FocusNode? inputaddressFocusNode;
  TextEditingController? inputaddressTextController;
  String? inputaddressSelectedOption;
  String? Function(BuildContext, String?)? inputaddressTextControllerValidator;
  // Stores action output result for [Backend Call - API (GetAddress)] action in inputaddress widget.
  ApiCallResponse? apiResultxz5;
  // Stores action output result for [Backend Call - API (GetReference)] action in inputaddress widget.
  ApiCallResponse? apiResultx2l;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputaddressFocusNode?.dispose();
  }
}
