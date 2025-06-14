import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData9yo = false;
  FFUploadedFile uploadedLocalFile_uploadData9yo =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for SupriseCheck widget.
  bool? supriseCheckValue;
  // State field(s) for NamaProduk widget.
  FocusNode? namaProdukFocusNode;
  TextEditingController? namaProdukTextController;
  String? Function(BuildContext, String?)? namaProdukTextControllerValidator;
  // State field(s) for DeskripsiProduk widget.
  FocusNode? deskripsiProdukFocusNode;
  TextEditingController? deskripsiProdukTextController;
  String? Function(BuildContext, String?)?
      deskripsiProdukTextControllerValidator;
  // State field(s) for KomposisiProduk widget.
  FocusNode? komposisiProdukFocusNode;
  TextEditingController? komposisiProdukTextController;
  String? Function(BuildContext, String?)?
      komposisiProdukTextControllerValidator;
  // State field(s) for Jumlah widget.
  FocusNode? jumlahFocusNode;
  TextEditingController? jumlahTextController;
  String? Function(BuildContext, String?)? jumlahTextControllerValidator;
  // State field(s) for HargaAsli widget.
  FocusNode? hargaAsliFocusNode;
  TextEditingController? hargaAsliTextController;
  String? Function(BuildContext, String?)? hargaAsliTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for HargaJual widget.
  FocusNode? hargaJualFocusNode;
  TextEditingController? hargaJualTextController;
  String? Function(BuildContext, String?)? hargaJualTextControllerValidator;
  DateTime? datePicked2;
  DateTime? datePicked3;
  bool isDataUploading_uploadImageFirestore = false;
  FFUploadedFile uploadedLocalFile_uploadImageFirestore =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadImageFirestore = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namaProdukFocusNode?.dispose();
    namaProdukTextController?.dispose();

    deskripsiProdukFocusNode?.dispose();
    deskripsiProdukTextController?.dispose();

    komposisiProdukFocusNode?.dispose();
    komposisiProdukTextController?.dispose();

    jumlahFocusNode?.dispose();
    jumlahTextController?.dispose();

    hargaAsliFocusNode?.dispose();
    hargaAsliTextController?.dispose();

    hargaJualFocusNode?.dispose();
    hargaJualTextController?.dispose();
  }
}
