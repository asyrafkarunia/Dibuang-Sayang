import '/flutter_flow/flutter_flow_util.dart';
import '/sisi_bisnis/sidenavdrawer/sidenavdrawer_widget.dart';
import 'halaman_penjualan_widget.dart' show HalamanPenjualanWidget;
import 'package:flutter/material.dart';

class HalamanPenjualanModel extends FlutterFlowModel<HalamanPenjualanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidenavdrawer component.
  late SidenavdrawerModel sidenavdrawerModel;

  @override
  void initState(BuildContext context) {
    sidenavdrawerModel = createModel(context, () => SidenavdrawerModel());
  }

  @override
  void dispose() {
    sidenavdrawerModel.dispose();
  }
}
